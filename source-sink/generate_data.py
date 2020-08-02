import pandas as pd
from time import sleep
from sqlalchemy import create_engine

if __name__ == '__main__':
    connection = create_engine("postgresql://pxl:password@localhost/numbers")
    index = 0
 
    for e in range(1000):
        data = {'id': 'A'+str(e), 'number' : e}
        df = pd.DataFrame(data, index = [index])       
        print(f"Sending data : {data}")

        df.to_sql('NUMBER', connection, if_exists='append') 
        index += 1
        sleep(5)

