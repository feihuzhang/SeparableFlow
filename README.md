# SeparableFlow
[Separable Flow: Learning Motion Cost Volumes for Optical Flow Estimation](https://openaccess.thecvf.com/content/ICCV2021/papers/Zhang_Separable_Flow_Learning_Motion_Cost_Volumes_for_Optical_Flow_Estimation_ICCV_2021_paper.pdf)




## Building Requirements:

    gcc: >=5.3
    GPU mem: >=5G (for testing);  >=11G (for training)
    pytorch: >=1.6
    cuda: >=9.2 (9.0 doesn’t support well for the new pytorch version and may have “pybind11 errors”.)
    tested platform/settings:
      1) ubuntu 18.04 + cuda 11.0 + python 3.6, 3.7
      2) centos + cuda 11 + python 3.7
      

## Install Pytorch:
You can easily install pytorch (>=1.6) by "pip install" or anaconda.


## How to Use?

Step 1: compile the libs by "sh compile.sh"
- Change the environmental variable ($PATH, $LD_LIBRARY_PATH etc.), if it's not set correctly in your system environment (e.g. .bashrc). Examples are included in "compile.sh".

Step 2: download and prepare the training dataset or your own test set.

        
Step 3: revise parameter settings and run "train.sh" and "evaluate.sh" for training, finetuning and prediction/testing. Note that the “crop_width” and “crop_height” must be multiple of 64 during training.


## Pretrained models:

| things | sintel | kitti|
|---|---|---|
|[Google Drive](https://drive.google.com/file/d/1baepLE9wxmt4QJEGMC5QeaQCQfZETEAu/view?usp=sharing)|[Google Drive](https://drive.google.com/file/d/1bpm0HmwcBrbyAsikTJR3qST6mAavQ60k/view?usp=sharing)|[Google Drive](https://drive.google.com/file/d/1qqpuaPpFBcg5TjBrg49MZvdJoL7bEy8A/view?usp=sharing)|
|[Baidu Yun (password: 9qcd)](https://pan.baidu.com/s/1lK2q0QtMwC0ROVCd6tyejA?pwd=9qcd)|[Baidu Yun (password: m1xs)](https://pan.baidu.com/s/1rtUrsGiTjU0GqMys1xRm6Q?pwd=m1xs)|[Baidu Yun (password: sg46)](https://pan.baidu.com/s/1ALo1lFmQkkziagoRPxzSsQ?pwd=sg46)|

These pre-trained models perform a little better than those reported in our original paper.

| Leadboards | Sintel clean | Sintel final | KITTI |
|---|---|---|---|
| RAFT baseline | 1.94 | 3.18 | 5.10 |
| Orginal paper | 1.50 | 2.67 | 4.64 |
| This new implementation | 1.49 | 2.64 | 4.53 |

*Standard two-frame evaluations without previous video frames for "warm start".*




## Reference:

If you find the code useful, please cite our paper:

    @inproceedings{Zhang2021SepFlow,
      title={Separable Flow: Learning Motion Cost Volumes for Optical Flow Estimation},
      author={Zhang, Feihu and Woodford, Oliver J. and Prisacariu, Victor Adrian and Torr, Philip H.S.},
      booktitle={Proceedings of the IEEE/CVF International Conference on Computer Vision (ICCV)},
      year={2021}
      pages={10807-10817}
    }

The code is implemented based on 
https://github.com/feihuzhang/DSMNet and https://github.com/princeton-vl/RAFT.
Please also consider citing:

    @inproceedings{zhang2019domaininvariant,
      title={Domain-invariant Stereo Matching Networks},
      author={Feihu Zhang and Xiaojuan Qi and Ruigang Yang and Victor Prisacariu and Benjamin Wah and Philip Torr},
      booktitle={Europe Conference on Computer Vision (ECCV)},
      year={2020}
    }
    @inproceedings{teed2020raft,
      title={RAFT: Recurrent All Pairs Field Transforms for Optical Flow},
      author={Zachary Teed and Jia Deng},
      booktitle={Europe Conference on Computer Vision (ECCV)},
      year={2020}
    }
  
