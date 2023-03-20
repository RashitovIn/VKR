mkdir -p cache model meta submission

# train
python -m src.preprocess.dicom_to_dataframe --input /kaggle/input/rsna-intracranial-hemorrhage-detection/rsna-intracranial-hemorrhage-detection/stage_2_train.csv --output /kaggle/working/cache/train_raw.pkl --imgdir /kaggle/input/rsna-intracranial-hemorrhage-detection/rsna-intracranial-hemorrhage-detection/stage_2_train
python -m src.preprocess.create_dataset --input /kaggle/working/cache/train_raw.pkl --output /kaggle/working/cache/train.pkl --brain-diff 60
python -m src.preprocess.make_folds --input /kaggle/working/cache/train.pkl --output /kaggle/working/cache/train_folds8_seed300.pkl --n-fold 8 --seed 300

# test 
python -m src.preprocess.dicom_to_dataframe --input /kaggle/input/rsna-intracranial-hemorrhage-detection/rsna-intracranial-hemorrhage-detection/stage_2_sample_submission.csv --output /kaggle/working/cache/test_raw.pkl --imgdir /kaggle/input/rsna-intracranial-hemorrhage-detection/rsna-intracranial-hemorrhage-detection/stage_2_test
python -m src.preprocess.create_dataset --input /kaggle/working/cache/test_raw.pkl --output /kaggle/working/cache/test.pkl --brain-diff 60
