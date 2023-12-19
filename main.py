import psycopg2
import matplotlib.pyplot as plt

username = 'postgres'
password = 'postgres'
database = 'db_lab3'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT 
    C.champion_name,
    COUNT(*) AS use_count
FROM 
    Participants P
JOIN 
    Champions C ON P.championID = C.championID
GROUP BY 
    C.champion_name
ORDER BY 
    use_count DESC;
'''

query_2 = '''
SELECT 
    P.role,
    COUNT(*) AS role_count
FROM 
    Participants P
GROUP BY 
    P.role;
'''

query_3 = '''
SELECT 
    P.position,
    COUNT(DISTINCT P.role) AS unique_roles_count
FROM 
    Participants P
GROUP BY 
    P.position;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:

    cur = conn.cursor()

    cur.execute(query_1)
    print("Query 1")
    for row in cur:
        print(row)
    print("\n")

    cur.execute(query_2)
    print("Query 2")
    for row in cur:
        print(row)
    print("\n")

       
    cur.execute(query_3)
    print("Query 3")
    for row in cur:
        print(row)
    print("\n")