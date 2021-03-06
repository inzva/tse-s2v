WORK_DIR="/truba/home/ebudur/tse-s2v" #needs to be changed according to your specific environment

TASK='MULTINLI-MT-TR-MATCHED'

MDLS_PATH="/truba_scratch/ebudur/data/results"
MDL_CFGS="$WORK_DIR/model_configs"
#GLOVE_PATH="$WORK_DIR/data/word_embeddings/glove"

CFG="TR"

DATA="$WORK_DIR/data/sem_sim/tr/MULTINLI-MT-TR/"

python /truba/home/ebudur/tse-s2v/src/evaluate.py \
       --eval_task=$TASK \
       --data_dir=$DATA \
       --model_config="$MDL_CFGS/$CFG/eval.json" \
       --results_path="$MDLS_PATH" &

