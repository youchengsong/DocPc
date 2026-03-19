# CUDA_VISIBLE_DEVICES=0 python train_colqwen25_model.py \
#     --output-dir /workspace/jqy_new/colpali/checkpoint/colSmol/0723_01 \
#     --dataset-name cjkasbdkjnlakb/gold_tiny_train_datasets \yiliboqi/datasets_10w
#     --pretrained_model_name_or_path /workspace/jqy_new/colpali/base_models/colqwen2.5-v0.2-merged \
#     --eval-image-dir /workspace/jqy_new/ft_colqwen_datasets/gold_datasets/image_path \
#     --eval-dataset-path /workspace/jqy_new/ft_colqwen_datasets/gold_datasets/test_datasets.json \
#     --lr 1e-5 \
#     --tau 0.01 \
#     --trainer hf \
#     --loss combined \
#     --use-multi-positive \
#     --max-positives 10 \
#     --infonce-weight 1.0 \
#     --listwise-weight 0.1 \
#     --listwise-freq 5 \
#     --pos-target-column pos_target \
#     --peft \
#     --peft-r 32 \
#     --peft-lora-alpha 32 \
#     --peft-lora-dropout 0.1 \
#     --peft-init-lora-weights gaussian \
#     --peft-bias none \
#     --peft-task-type FEATURE_EXTRACTION \
#     --peft-target-modules "(.*(model.text_model).*(down_proj|gate_proj|up_proj|k_proj|q_proj|v_proj|o_proj).*$|.*(custom_text_proj).*$)" \
#     --num-train-epochs 5 \
#     --per-device-train-batch-size 32 \
#     --warmup-ratio 0.005 \
#     --max-grad-norm 1.0 \
#     --split-ratio 0.025 \
#     --save-steps 200 \
#     --eval-steps 200 \
#     --save-total-limit 50 \



# CUDA_VISIBLE_DEVICES=0 python train_colqwen25_model.py \
#     --output-dir /workspace/jqy_new/colpali/checkpoint/colqwen_xmh_0818 \
#     --dataset-name hepeng00/train_datasets_10w \
#     --pretrained_model_name_or_path /workspace/jqy_new/colpali/checkpoint/train_gold_huge_0702_02/sft-colqwen-merged \
#     --eval-image-dir /workspace/jqy_new/ft_colqwen_datasets/gold_datasets/image_path \
#     --eval-dataset-path /workspace/jqy_new/ft_colqwen_datasets/gold_datasets/test_datasets.json \
#     --lr 1e-5 \
#     --tau 0.05 \
#     --trainer hf \
#     --loss combined \
#     --use-multi-positive \
#     --max-positives 10 \
#     --infonce-weight 1.0 \
#     --listwise-weight 0.1 \
#     --listwise-freq 5 \
#     --pos-target-column pos_target \
#     --peft \
#     --peft-r 32 \
#     --peft-lora-alpha 32 \
#     --peft-lora-dropout 0.1 \
#     --peft-init-lora-weights gaussian \
#     --peft-bias none \
#     --peft-task-type FEATURE_EXTRACTION \
#     --peft-target-modules "(.*(model.text_model).*(down_proj|gate_proj|up_proj|k_proj|q_proj|v_proj|o_proj).*$|.*(custom_text_proj).*$)" \
#     --num-train-epochs 5 \
#     --per-device-train-batch-size 32 \
#     --warmup-ratio 0.06 \
#     --max-grad-norm 1.0 \
#     --split-ratio 0.0 \
#     --save-steps 200 \
#     --eval-steps 200 \
#     --save-total-limit 50 \

# CUDA_VISIBLE_DEVICES=0 python train_colqwen25_model.py \
#   --output-dir /workspace/jqy_new/colpali/checkpoint/colqwen_xmh_0818 \
#   --dataset-name hepeng00/train_datasets_10w \
#   --pretrained_model_name_or_path /workspace/jqy_new/colpali/checkpoint/train_gold_huge_0702_02/sft-colqwen-merged \
#   --eval-image-dir /workspace/jqy_new/ft_colqwen_datasets/gold_datasets/image_path \
#   --eval-dataset-path /workspace/jqy_new/ft_colqwen_datasets/gold_datasets/test_datasets.json \
#   --trainer hf \
#   --loss combined \
#   --use-multi-positive \
#   --max-positives 10 \
#   --infonce-weight 1.0 \
#   --listwise-weight 0.1 \
#   --listwise-freq 10 \
#   --pos-target-column pos_target \
#   --peft \
#   --peft-r 32 \
#   --peft-lora-alpha 32 \
#   --peft-lora-dropout 0.1 \
#   --peft-init-lora-weights gaussian \
#   --peft-bias none \
#   --peft-task-type FEATURE_EXTRACTION \
#   --peft-target-modules "(.*(model.text_model).*(down_proj|gate_proj|up_proj|k_proj|q_proj|v_proj|o_proj).*$|.*(custom_text_proj).*$)" \
#   --num-train-epochs 3 \
#   --per-device-train-batch-size 32 \
#   --gradient-accumulation-steps 8 \
#   --lr 7e-6 \
#   --tau 0.05 \
#   --warmup-ratio 0.03 \
#   --weight-decay 0.01 \
#   --max-grad-norm 1.0 \
#   --split-ratio 0.0 \
#   --save-steps 1000 \
#   --eval-steps 1000 \
#   --save-total-limit 10 \
#   --lr-scheduler-type cosine \
#   --seed 42


# CUDA_VISIBLE_DEVICES=0 python train_colqwen25_model.py \
#   --output-dir /workspace/jqy_new/colpali/checkpoint/colqwen_xmh_0815 \
#   --dataset-name hepeng00/train_datasets_10w \
#   --pretrained_model_name_or_path /workspace/jqy_new/colpali/checkpoint/train_gold_huge_0702_02/sft-colqwen-merged \
#   --eval-image-dir /workspace/jqy_new/ft_colqwen_datasets/gold_datasets/image_path \
#   --eval-dataset-path /workspace/jqy_new/ft_colqwen_datasets/gold_datasets/test_datasets.json \
#   --lr 7e-6 \
#   --tau 0.05 \
#   --trainer hf \
#   --loss combined \
#   --use-multi-positive \
#   --max-positives 10 \
#   --infonce-weight 1.0 \
#   --listwise-weight 0.1 \
#   --listwise-freq 10 \
#   --pos-target-column pos_target \
#   --peft \
#   --peft-r 32 \
#   --peft-lora-alpha 32 \
#   --peft-lora-dropout 0.1 \
#   --peft-init-lora-weights gaussian \
#   --peft-bias none \
#   --peft-task-type FEATURE_EXTRACTION \
#   --peft-target-modules "(.*(model.text_model).*(down_proj|gate_proj|up_proj|k_proj|q_proj|v_proj|o_proj).*$|.*(custom_text_proj).*$)" \
#   --num-train-epochs 3 \
#   --per-device-train-batch-size 32 \
#   --warmup-ratio 0.03 \
#   --max-grad-norm 1.0 \
#   --split-ratio 0.0 \
#   --save-steps 1000 \
#   --eval-steps 1000 \
#   --save-total-limit 10




# CUDA_VISIBLE_DEVICES=0 python train_colqwen25_model.py \
#     --output-dir /data/youchengsong/models/colqwen_finetune \
#     --dataset-name datasets/gold_datasets \
#     --pretrained_model_name_or_path /data/youchengsong/models/colqwen2.5_v0.2_merged \
#     --eval-image-dir /workspace/jqy_new/ft_colqwen_datasets/xmh_colqwen_dataset/image_path \
#     --eval-dataset-path /workspace/jqy_new/ft_colqwen_datasets/xmh_colqwen_dataset/query_list_10w_gemini_flash_test.json \
#     --lr 1e-5 \
#     --tau 0.01 \
#     --trainer hf \
#     --loss combined \
#     --use-multi-positive \
#     --max-positives 10 \
#     --infonce-weight 1.0 \
#     --listwise-weight 0.1 \
#     --listwise-freq 5 \
#     --pos-target-column pos_target \
#     --peft \
#     --peft-r 32 \
#     --peft-lora-alpha 32 \
#     --peft-lora-dropout 0.1 \
#     --peft-init-lora-weights gaussian \
#     --peft-bias none \
#     --peft-task-type FEATURE_EXTRACTION \
#     --peft-target-modules "(.*(model.text_model).*(down_proj|gate_proj|up_proj|k_proj|q_proj|v_proj|o_proj).*$|.*(custom_text_proj).*$)" \
#     --num-train-epochs 5 \
#     --per-device-train-batch-size 32 \
#     --warmup-ratio 0.005 \
#     --max-grad-norm 1.0 \
#     --split-ratio 0.025 \
#     --save-steps 200 \
#     --eval-steps 200 \
#     --save-total-limit 50 \



CUDA_VISIBLE_DEVICES=2 python train_colqwen25_model.py \
    --output-dir /data/youchengsong/models/colpali_finetuned_0131 \
    --dataset-name /data/youchengsong/datasets/gold_tiny_datasets\
    --pretrained-model-name-or-path /data/youchengsong/models/colpali_v1.3_merged \
    --lr 1e-5 \
    --tau 0.01 \
    --trainer hf \
    --loss combined \
    --use-multi-positive \
    --max-positives 10 \
    --infonce-weight 1.0 \
    --listwise-weight 0.1 \
    --listwise-freq 5 \
    --pos-target-column pos_target \
    --peft \
    --peft-r 32 \
    --peft-lora-alpha 32 \
    --peft-lora-dropout 0.1 \
    --peft-init-lora-weights gaussian \
    --peft-bias none \
    --peft-task-type FEATURE_EXTRACTION \
    --peft-target-modules "(.*(model).*(down_proj|gate_proj|up_proj|k_proj|q_proj|v_proj|o_proj).*$|.*(custom_text_proj).*$)" \
    --num-train-epochs 5 \
    --per-device-train-batch-size 4 \
    --warmup-ratio 0.005 \
    --max-grad-norm 1.0 \
    --split-ratio 0.025 \
    --save-steps 200 \
    --eval-steps 200 \
    --save-total-limit 50 \