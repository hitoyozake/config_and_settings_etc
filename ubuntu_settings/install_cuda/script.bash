
sudo apt-get install gcc-4.8
sudo apt-get intsall g++-4.8

# version of gcc and g++ that CUDA supported is 4.8 (version  > 4.8 is not unsupported?  ) 
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 7             
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 7             

sudo apt-get install libglu1-mesa libxi-dev libxmu-dev libglu1-mesa-dev

sudo bash ./cuda_7.5.18_linux.run

echo write below to .bashrc for registering LIBRARY Path
echo  TODO:export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
echo  TODO:export CUDA_HOME=/usr/local/cuda

echo please do "source ~/.bashrc after registering"


