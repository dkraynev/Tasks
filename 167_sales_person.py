# -*- coding: utf-8 -*-
"""167 Sales person.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1SKqbko1MBxevN3xdkQntXEu3nM1bg0De
"""

import pandas as pd

def sales_person(sales_person: pd.DataFrame, company: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    filtred = company.loc[company['name'] == 'RED', 'com_id']
    if filtred.empty:
        result = sales_person[['name']]
    else:
        red_company_id = company.loc[company['name'] == 'RED', 'com_id'].iloc[0]
        red_sales_id = orders.loc[orders['com_id'] == red_company_id, 'sales_id'].unique()
        result = sales_person.loc[~sales_person['sales_id'].isin(red_sales_id), ['name']]

    return result