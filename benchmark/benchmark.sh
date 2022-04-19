python -u ./dp_benchmark.py --batch-size 128 --num-gpus 1 2>&1|tee ./train-dp-1-res50.log &

python -u ./dp_benchmark.py --batch-size 512 --num-gpus 4 2>&1|tee ./train-dp-4-res50.log &

python -u ./dp_benchmark_amp.py --batch-size 128 --num-gpus 1 2>&1|tee ./train-dp-1-res50-apex.log &


python -u ./dp_benchmark.py --batch-size 128 --num-gpus 1 --model vgg19 2>&1|tee ./train-dp-1-vgg19.log &

python -u ./dp_benchmark_amp.py --batch-size 128 --num-gpus 1 --model vgg19 2>&1|tee ./train-dp-1-vgg19-apex.log &
