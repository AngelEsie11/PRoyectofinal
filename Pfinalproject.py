import pyodbc

nombre='LATOP MSI G456 I5 DE 10MA GENERACION '
num='18'

try:
    connection=pyodbc.connect('DRIVER={SQL server};SERVER=MSI-1;DATABASE=INVENTARIO_ELECTRONICO;trusted_connection=yes;',timeout=30)
    print("Conexiob exitosa")
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM ARTICULOS')
    #rows = cursor.fetchall()
    rows= cursor.fetchone()
    #for row in rows:
       #print (row)
    #cursor.close()
    #connection.close()
    
except Exception as ex:
    print(ex)
