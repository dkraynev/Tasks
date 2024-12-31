import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    result = customers.merge(
        orders,
        left_on='id',
        right_on='customerId',
        how='left'
        )
    result = result[result['customerId'].isnull()][['name']]
    result = result.rename(columns={'name': 'Customers'})
    return result