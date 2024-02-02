import json
import os

import psycopg2


def openConnection():
    print(os.environ['TYPE6_DATABASE_URL'])
    print(os.environ['TYPE6_DATABASE_PORT'])
    print(os.environ['TYPE6_DATABASE_USER'])
    print(os.environ['TYPE6_DATABASE_PASSWORD'])

    if 'TYPE6_DEBUG' in os.environ:
        print("using debug connection")
        conn = psycopg2.connect(host=os.environ['TYPE6_DATABASE_URL'],
                                port=os.environ['TYPE6_DATABASE_PORT'],
                                dbname="postgres", # in debug only
                                user=os.environ['TYPE6_DATABASE_USER'],
                                password=os.environ['TYPE6_DATABASE_PASSWORD'])
    else:
        print("using production connection")
        conn = psycopg2.connect(host=os.environ['TYPE6_DATABASE_URL'],
                                port=os.environ['TYPE6_DATABASE_PORT'],
                                sslmode="verify-full", # remove this in debug
                                dbname="type-6-database", # remove this in debug
                                #dbname="postgres", # in debug only
                                user=os.environ['TYPE6_DATABASE_USER'],
                                password=os.environ['TYPE6_DATABASE_PASSWORD'])
    cursor = conn.cursor()

    return conn, cursor

def loadAll(conn, cursor):
    cursor.execute('select * from type7metadata')
    res = cursor.fetchall()

    json_data = []
    row_headers = [x[0] for x in cursor.description]
    for result in res:
        json_data.append(dict(zip(row_headers, result)))

    return json_data

def saveAll(conn, cursor, matches, json_data):
    for index, item in enumerate(json_data):
        if index in matches and matches[index] < len(json_data):
            item['metadata']['selectedUsers'] = [json_data[matches[index]]['user_id']]
            item['metadata']['parsedByJob'] = True
            print("{} -> {}".format(index, matches[index]))
        else:
            item['metadata']['selectedUsers'] = []
            item['metadata']['parsedByJob'] = False
        val = json.dumps(item['metadata'])
        cursor.execute("update type7metadata set metadata = '{}' where user_id = {}".format(val, item['user_id']))

def closeConnection(conn, cursor):
    conn.commit()
    cursor.close()

