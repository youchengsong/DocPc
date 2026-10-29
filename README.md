# DocPC: Document-Level Visual Retrieval via Representative Page Composition

This repository contains the code and data for the paper:

> **DocPC: Document-Level Visual Retrieval via Representative Page Composition**

## Overview

DocPC is a document-level visual retrieval framework that selects representative pages from a multi-page document, composes them into a single grid image, and encodes the grid with a vision-language model for efficient retrieval.

**Key results on the DocViRe benchmark:**
- **44.09** average NDCG@5 (vs. 38.91 for the strongest page-level baseline)
- **10.1x** reduction in indexed images, vectors, and storage
- **7.7x** faster end-to-end indexing

<p align="center">
  <img src="ColQwen__EMNLP_2026_/latex/figures/method.png" width="90%" alt="DocPC overview"/>
</p>

## Repository Structure

```
DocPC/
├── src/
│   ├── colpali_engine/       # Model architecture, losses, training utilities
│   │   ├── models/           # ColQwen2, ColQwen2.5, ColPali model implementations
│   │   ├── loss/             # Multi-Positive InfoNCE & listwise losses
│   │   ├── trainer/          # Contrastive trainer
│   │   ├── data/             # Dataset & sampler
│   │   └── compression/      # Token pooling strategies
│   ├── train/                # Training scripts
│   └── eval/                 # Evaluation scripts for all baselines
├── dataset_generate/         # DocViRe benchmark construction pipeline
│   ├── keywords_deepseek_text.py       # Step 1: Keyword extraction
│   ├── keywords_clustering.py          # Step 2: Document grouping
│   ├── query_create_text.py            # Step 3: Query generation
│   ├── query_reverse_deepseek_filter.py # Step 4: Quality validation
│   ├── pdf_first4_pages_to_image.py    # Page composition: First-4
│   ├── pdf_first2_last2_pages_to_image.py # Page composition: Boundary
│   ├── pdf_uniform4_pages_to_image.py  # Page composition: Uniform-4
│   ├── pdf_random4_pages_to_image.py   # Page composition: Random-4
│   └── pdf_clip_select4_pages_to_image.py # Page composition: Base-Clip
└── old_results/              # Placeholder for experiment results
```

## Installation

```bash
git clone https://github.com/youchengsong/DocPc.git
cd DocPc
pip install -r requirements.txt  # if available
```

Dependencies include:
- PyTorch
- Transformers (HuggingFace)
- colpali-engine
- Milvus (for vector indexing)

## Dataset: DocViRe

DocViRe is a benchmark for document-level visual retrieval with multi-positive relevance annotations across 7 domains: Biology, Education, Finance, Government, Industrial, Legal, and Research.

| Split | Queries | Documents |
|-------|---------|-----------|
| Train | 10,884  | 4,438     |
| Test  | 2,237   | 3,850     |

**Download:** [DocViRe on HuggingFace](https://huggingface.co/datasets/anonymous-7219/docpc)

## Training

Train DocPC-ColQwen on DocViRe:

```bash
cd src/train
bash train.sh
```

The training uses Multi-Positive InfoNCE combined with a sparsely scheduled Top-K listwise loss (ApproxNDCG applied every *m*=40 steps).

## Evaluation

Evaluate on DocViRe:

```bash
cd src/eval
bash eval_model.sh
```

Evaluate specific baselines:

```bash
bash eval_jina_clip.sh    # Jina-CLIP baseline
bash eval_nomic.sh        # Nomic-Embed baseline
bash eval_page_strategy.sh # Page selection strategy comparison
```

## Page Composition Strategies

Generate grid images with different page selection strategies:

| Strategy | Script | Description |
|----------|--------|-------------|
| First-4 | `pdf_first4_pages_to_image.py` | First 4 pages (default) |
| Boundary | `pdf_first2_last2_pages_to_image.py` | First 2 + Last 2 pages |
| Uniform-4 | `pdf_uniform4_pages_to_image.py` | Uniformly sampled 4 pages |
| Random-4 | `pdf_random4_pages_to_image.py` | Randomly sampled 4 pages |
| Base-Clip | `pdf_clip_select4_pages_to_image.py` | CLIP embedding-based selection |

## Citation

```bibtex
@inproceedings{you2027docpc,
  title={DocPC: Document-Level Visual Retrieval via Representative Page Composition},
  author={You, Chengsong and Jiang, Qiyi and Zhou, Junwei and Cao, Xiaoyu and Wang, Weiyao and Xu, Yiwei and Zhao, Ziyan and Sun, Zhen and Zhu, Qicheng and Fu, Xuanyi and Chen, Yufan and Li, Yilun and Xiong, Rongkang and Hu, Yunhai and Du, Nan},
  booktitle={Proceedings of the International Conference on Document Analysis and Recognition (ICDAR)},
  year={2027}
}
```

## License

This project is for research purposes. Please refer to the license file for details.
