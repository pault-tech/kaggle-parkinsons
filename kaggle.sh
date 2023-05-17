#utility script for the kaggle competition
# AMP-Parkinson's Disease Progression Prediction
# https://www.kaggle.com/competitions/amp-parkinsons-disease-progression-prediction

kaggle kernels pull gusthema/parkinson-s-disease-progression-prediction-w-tfdf

mkdir -p input/amp-parkinsons-disease-progression-prediction

cd input/amp-parkinsons-disease-progression-prediction
kaggle competitions download -c amp-parkinsons-disease-progression-prediction
unzip amp-parkinsons-disease-progression-prediction

kaggle datasets list

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

mkdir mykernel
kaggle kernels init --path mykernel

# metadata required for subsequent push
kaggle kernels pull --metadata pt1001/parkinson-s-disease-progression-prediction-w-tfdf

# mkdir kernels
cd kernels
kaggle kernels pull cdeotte/prot-bert-finetune-lb-0-30
kaggle kernels pull gusthema/parkinson-s-disease-progression-prediction-w-tfdf
#
jupyter nbconvert --to html parkinson-s-disease-progression-prediction-w-tfdf.ipynb

# kaggle kernels push --path parkinson-s-disease-progression-prediction-w-tfdf.ipynb

kaggle kernels push --path ./

kaggle kernels output pt1001/parkinson-s-disease-progression-prediction-w-tfdf

kaggle kernels

kaggle kernels output

# pip install --user kaggle
# pip install --user jupytext #sync ipynb .py files

type kaggle

#add kaggle to path if needed
function setpath {

    if [ -d "$HOME/.local/bin" ] ; then
        PATH="$HOME/.local/bin:$PATH"
    fi

}
