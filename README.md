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

        
Step 3: revise parameter settings and run "train.sh" and "evaluate.sh" for training, finetuning and prediction/testing. Note that the “crop_width” and “crop_height” must be multiple of 64 during training (we will release a better model without this requirement).


## Pretrained models:

| things | sintel | kitti|
|---|---|---|
|[Google Drive](https://drive.google.com/file/d/1baepLE9wxmt4QJEGMC5QeaQCQfZETEAu/view?usp=sharing)|[Google Drive](https://drive.google.com/file/d/1bpm0HmwcBrbyAsikTJR3qST6mAavQ60k/view?usp=sharing)|[Google Drive]|
|[Baidu Yun (password: zk5s)](https://pan.baidu.com/s/1Vkz8-hhXak7CeQVny3aJow?pwd=zk5s)|[Baidu Yun (password: 78b4)](https://pan.baidu.com/s/10wrOO2Y_TK-pY-icejNKuA?pwd=78b4)|[Baidu Yun (password: )]|

These pre-trained models perform a little better than those reported in the paper.



## Reference:

If you find the code useful, please cite our paper:

    @inproceedings{Zhang_2021_ICCV,
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
  
