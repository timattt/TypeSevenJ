from db import *
from converter import *
from algorithm import *

conn, cursor = openConnection()
json_data = loadAll(conn, cursor)
pers = convertJsonData(json_data)
matches = algo(pers)
saveAll(conn, cursor, matches, json_data)
closeConnection(conn, cursor)

