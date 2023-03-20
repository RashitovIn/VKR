python -m src.postprocess.make_submission --inputs "['/kaggle/working/meta/meta100_lgb.pkl', '/kaggle/working/meta/meta100_cat.pkl', '/kaggle/working/meta/meta100_xgb.pkl']" --output /kaggle/working/submission/sub001.csv

#kaggle competitions submit rsna-intracranial-hemorrhage-detection -m "" -f /kaggle/working/submission/sub001.csv
