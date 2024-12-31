import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    views = views[views['author_id'] == views['viewer_id']][['author_id']]
    views = views.drop_duplicates()
    views = views.sort_values(by='author_id')
    views.columns = ['id']
    
    return views