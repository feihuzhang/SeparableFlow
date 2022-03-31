mkdir -p checkpoints
mkdir -p logs
python train.py --batchSize=12 --testBatchSize=4 --thread=16 --stage='chairs' --freeze_bn=0 --gpu='0,1,2,3' --lr=0.0004 --save_path='checkpoints/chairs' --start_epoch=0 --image_size 320 448 --wdecay 0.0001 --gamma=0.8 --num_steps 50000  #2>&1 | tee logs/log_chairs.txt
python train.py --stage='things' --weights 'checkpoints/chairs.pth' --gpu='0,1,2,3' --num_steps 100000 --batchSize 8 --testBatchSize=4 --lr 0.000125 --image_size 448 768 --wdecay 0.0001  --freeze_bn=1 --save_path='checkpoints/things' --gamma=0.8  #2>&1 | tee logs/log_things.txt
python -u train.py --stage='sintel' --weights 'checkpoints/things.pth' --gpu='0,1,2,3' --num_steps 100000 --batchSize 8 --testBatchSize=4 --lr 0.000125 --image_size 384 832 --wdecay 0.00001  --freeze_bn=1 --save_path='checkpoints/sintel' --gamma=0.85  #2>&1 |tee logs/log_sintel.txt
python -u train.py --stage='kitti' --weights 'checkpoints/sintel.pth' --gpu='0,1,2,3' --num_steps 50000 --batchSize 8 --testBatchSize=4 --lr 0.0001 --image_size 320 1024 --wdecay 0.00001  --freeze_bn=1 --save_path='checkpoints/kitti' --gamma=0.85  #2>&1 | tee logs/log_kitti.txt

## If you have more GPU resource, consider using larger batchsize

#python train.py --batchSize=16 --testBatchSize=4 --thread=16 --resume='' --stage='chairs' --freeze_bn=0 --gpu='0,1,2,3' --lr=0.0004 --save_path='checkpoints/chairs' --start_epoch=0 --image_size 320 448 --wdecay 0.0001 --gamma=0.8 --num_steps 50000  2>&1 | tee logs/log_chairs.txt

#python train.py --stage='things' --weights 'checkpoints/chairs.pth' --gpu='0,1,2,3' --num_steps 100000 --batchSize 12 --testBatchSize=4 --lr 0.000125 --image_size 448 768 --wdecay 0.0001  --freeze_bn=1 --save_path='checkpoints/things' --gamma=0.8 2>&1 | tee logs/log_things.txt

#python -u train.py --stage='sintel' --weights 'checkpoints/things.pth' --gpu='0,1,2,3' --num_steps 100000 --batchSize 12 --testBatchSize=4 --lr 0.000125 --image_size 384 832 --wdecay 0.00001  --freeze_bn=1 --save_path='checkpoints/sintel' --gamma=0.85 2>&1 |tee logs/log_sintel.txt

#python -u train.py --stage='kitti' --weights 'checkpoints/sintel.pth' --gpu='0,1,2,3' --num_steps 50000 --batchSize 12 --testBatchSize=4 --lr 0.0001 --image_size 320 1024 --wdecay 0.00001  --freeze_bn=1 --save_path='checkpoints/kitti' --gamma=0.85 2>&1 | tee logs/log_kitti.txt

