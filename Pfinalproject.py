import pyodbc

nombre='LATOP MSI G456 I5 DE 10MA GENERACION '
num='18'

try:
    connection=pyodbc.connect('DRIVER={SQL server};SERVER=MSI-1;DATABASE=INVENTARIO_ELECTRONICO;trusted_connection=yes;')
    
    cursor = connection.cursor()
    cursor.execute('UPDATE articulos SET STOCK ='+num+' WHERE NOMBRE ='+nombre)
    rows = cursor.fetchall()
    for row in rows:
        print (row )
    cursor.close()
    connection.close()
    
except Exception as ex:
    print(ex)