import pandas as pd 
import joblib as jb 
from flask import Flask as fl, request, jsonify
import xgboost as xgb
from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import StandardScaler,OneHotEncoder




app=fl(__name__)

@app.route('/predict', methods=['POST'])
def predict():
    return 0