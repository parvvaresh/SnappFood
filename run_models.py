from models.train_MLmodels import train_models
import pandas as pd
from PreProcess import PreProcess

def main():
    df = pd.read_csv("./data/Snappfood.csv")
    result = train_models(df, PreProcess)
    result.to_csv("./assets/result_ml.csv")
    print(f"result saved in <<./assets/result_ml.csv>>")
    
    
    

main()