# import torch

# print(torch.__version__)
# print(torch.cuda.is_available())
# print(torch.version.cuda)
# print("CuDNN Version: ", torch.backends.cudnn.version())

import tensorflow as tf

print(tf.__version__)
print(tf.config.list_physical_devices("GPU"))
sys_details = tf.sysconfig.get_build_info()
cuda_version = sys_details["cuda_version"]
cudnn_version = sys_details["cudnn_version"]  
print(cuda_version)
print(cudnn_version)
