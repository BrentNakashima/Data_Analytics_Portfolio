'''
Purpose: Clean and Transform sales data from Excel
and load into MySQL Sales Table
'''
import pandas as pd
from sqlalchemy import create_engine
def main():
    engine = create_engine("mysql+pymysql://root:#Basketball230@localhost/sales_db")
    # Extract Data from sales_data.xlsx
    df = pd.read_excel("sales_data.xlsx")
    
    # Transform
    # Remove Extra Columns
    df = df.drop(columns=[
        "topping_generator", 
        "sweetness_generator",
        "ice_level_generator"
        ])
    # Change sweetness type to str because of enumerate
    df["sweetness"] = df["sweetness"].astype(str)
    print(df.dtypes)

    # Load Data into Sales MySQL Table
    df.to_sql("Sales", con=engine, if_exists="append", index=False)
    return 0

if __name__ == '__main__':
    main()
