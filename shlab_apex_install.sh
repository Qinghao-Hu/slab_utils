export CXX=/mnt/petrelfs/share/gcc/gcc-9.4.0/bin/g++ 
export CC=/mnt/petrelfs/share/gcc/gcc-9.4.0/bin/gcc 
export LD=/mnt/petrelfs/share/gcc/gcc-9.4.0/bin/g++  
export LD_LIBRARY_PATH=/mnt/petrelfs/share/gcc/mpc-0.8.1/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/mnt/petrelfs/share/gcc/mpfr-2.4.2/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/mnt/petrelfs/share/gcc/gmp-4.3.2/lib:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=/mnt/petrelfs/share/gcc/mpc-0.8.1/include:$C_INCLUDE_PATH
export C_INCLUDE_PATH=/mnt/petrelfs/share/gcc/mpfr-2.4.2/include:$C_INCLUDE_PATH

cd ../../apex
srun --partition=caif_dev --gres=gpu:1 -n1 --ntasks-per-node=1 --job-name=install --kill-on-bad-exit=1 pip install -v --disable-pip-version-check --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./
