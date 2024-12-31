import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    result = pd.merge(
        customers,
        orders,
        left_on = 'id',
        right_on = 'customerId',
        how = 'left'
    )
    result = result[result['customerId'].isnull()]
    result = result[['name']]
    result = result.rename(columns={'name': 'Customers'})

    return result