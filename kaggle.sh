mkdir input

cd input
kaggle competitions download -c amp-parkinsons-disease-progression-prediction
unzip amp-parkinsons-disease-progression-prediction
# kaggle datasets list

cd ..

kaggle kernels pull gusthema/parkinson-s-disease-progression-prediction-w-tfdf

# pip install --user tensorfljow (throws killed error, mb oom?)
# pip install --user tensorflow --no-cache-dir
pip install --user tensorflow_decision_forests --no-cache-dir


whoami
pwd
sudo mkdir /kaggle
sudo chown codespace /kaggle
ln -s /workspace/kaggle-parkinsons/input /kaggle/
ls /kaggle/input/
