MODEL_FLAGS="--attention_resolutions 32,16,8 --class_cond True  --dropout 0.1 --image_size 64 --learn_sigma True --num_channels 192 --num_head_channels 64 --num_res_blocks 3 --resblock_updown True --use_new_attention_order True --use_fp16 True --use_scale_shift_norm True"
DIFFUSION_FLAGS="--diffusion_steps 1000 --noise_schedule cosine"
TRAIN_FLAGS="--lr 1e-4 --batch_size 1"
DATAPATH=$1
CKPT=$2
python scripts/image_train.py --data_dir $DATAPATH --load_checkpoint $CKPT $MODEL_FLAGS $DIFFUSION_FLAGS $TRAIN_FLAGS