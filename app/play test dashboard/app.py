import os
from itsdangerous import json
import numpy as np
import pandas as pd
from flask import Flask
from flask_cors import CORS, cross_origin


def create_app(test_config=None):
    # create and configure the app
    app = Flask(__name__, instance_relative_config=True)
    cors = CORS(app)
    app.config['CORS_HEADERS'] = 'Content-Type'
    app.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE=os.path.join(app.instance_path, 'flaskr.sqlite'),
    )

    if test_config is None:
        # load the instance config, if it exists, when not testing
        app.config.from_pyfile('config.py', silent=True)
    else:
        # load the test config if passed in
        app.config.from_mapping(test_config)

    # ensure the instance folder exists
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    # a simple page that says hello
    @app.route('/age', methods=['GET'])
    def age():
        df_age=pd.read_excel("mental_2021_Depression_df.xlsm", sheet_name="by age")
        xf=df_age.groupby(["Subgroup"]).sum()
        return xf.to_json()

    @app.route('/sex', methods=['GET'])
    def sex():
        df_sex=pd.read_excel("mental_2021_Depression_df.xlsm", sheet_name="by sex")
        xfsex=df_sex.groupby(["Subgroup"]).sum()
        return xfsex.to_json()  

    @app.route('/race', methods=['GET'])
    def race():
        df_race=pd.read_excel("mental_2021_Depression_df.xlsm", sheet_name="by race")
        xfrace=df_race.groupby(["Subgroup"]).sum()
        return xfrace.to_json()  
    
    @app.route('/edu', methods=['GET'])
    def edu():
        df_edu=pd.read_excel("mental_2021_Depression_df.xlsm", sheet_name="by edu")
        xfedu=df_edu.groupby(["Subgroup"]).sum()
        return xfedu.to_json() 
    
    @app.route('/state', methods=['GET'])
    def state():
        df_state=pd.read_excel("mental_2021_Depression_df.xlsm", sheet_name="by state")
        xfstate=df_state.groupby(["Subgroup"]).sum()
        return xfstate.to_json()             







    return app