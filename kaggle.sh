mkdir input

cd input
kaggle competitions download -c amp-parkinsons-disease-progression-prediction
unzip amp-parkinsons-disease-progression-prediction
# kaggle datasets list

cd ..
kaggle kernels pull gusthema/parkinson-s-disease-progression-prediction-w-tfdf
