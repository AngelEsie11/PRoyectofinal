import pyodbc




try:
    connection=pyodbc.connect('DRIVER={SQL server};SERVER=MSI-1;DATABASE=INVENTARIO_ELECTRONICO;trusted_connection=yes;')
    print('Conexion exitosa')
    cursor = connection.cursor()
    cursor.execute("select*from articulos")
    rows = cursor.fetchall()
    for row in rows:
        print (row )
    cursor.close()
    connection.close()
    
except Exception as ex:
    print(ex)