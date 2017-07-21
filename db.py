from sqlalchemy import create_engine, MetaData
import os

print(os.environ)
dbname = os.environ['MYSQL_DATABASE']
user = "root"
password = os.environ['MYSQL_ROOT_PASSWORD']
host = os.environ['MYSQL_HOST']
port = os.environ['MYSQL_PORT']

engine = create_engine(('mysql+mysqlconnector://{user}:{password}@'
                        '{host}:{port}/{dbname}').format(user=user,
                                                         password=password,
                                                         host=host,
                                                         port=port,
                                                         dbname=dbname),
                       echo=True,
                       encoding='utf8')
meta = MetaData()
meta.reflect(bind=engine)
conn = engine.connect()

if __name__ == '__main__':
    result = engine.execute("SELECT * FROM `countries`")
    for el in result:
        print(el)
