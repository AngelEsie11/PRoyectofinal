#llamar la variable conenction
from Pfinalproject import connection


with connection.Cursor() as Cursor:
    Cursor.execute('SELECT * FROM ARTICULOS')
    
    resultado =Cursor.fetchone()