import pandas as pd

def calculate_special_bonus(employees: pd.DataFrame) -> pd.DataFrame:
    condition = (employees['employee_id'] % 2 == 1) & ~employees['name'].str.startswith('M')
    employees[['bonus']] = employees[['salary']].where(condition, 0)
    result = employees.sort_values(by='employee_id')

    return result[['employee_id', 'bonus']]