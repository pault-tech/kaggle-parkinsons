
#utility script for the kaggle competition
# AMP-Parkinson's Disease Progression Prediction
# https://www.kaggle.com/competitions/amp-parkinsons-disease-progression-prediction

kaggle kernels pull gusthema/parkinson-s-disease-progression-prediction-w-tfdf

mkdir -p input/amp-parkinsons-disease-progression-prediction

cd input/amp-parkinsons-disease-progression-prediction
kaggle competitions download -c amp-parkinsons-disease-progression-prediction
unzip amp-parkinsons-disease-progression-prediction
# kaggle datasets list

cd workspace/kaggle*


# pip install --user tensorfljow (throws killed error, mb oom?)
# pip install --user tensorflow --no-cache-dir
pip install --user tensorflow_decision_forests --no-cache-dir
# %pip install --quiet --exists-action i --disable-pip-version-check -r ../requirements.txt --user


whoami
pwd
sudo mkdir /kaggle
sudo chown codespace /kaggle
ln -s /workspaces/kaggle-parkinsons/input /kaggle/
ls /kaggle/input/

pip install --user nbconvert

jupyter nbconvert --to python parkinson-s-disease-progression-prediction-w-tfdf.ipynb
