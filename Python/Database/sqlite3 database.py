import sqlite3

stocks = [
('GOOG', 100, 490.1),
('AAPL', 50, 545.75),
('FB', 150, 7.45),
('HPQ', 75, 33.2),
]

db = sqlite3.connect('database.db')

c = db.cursor()
c.execute('create table protfolio (symbol text, shares integer, price real)')
db.commit()


c.executemany('insert into protfolio values (?,?,?)', stocks)
db.commit()

for row in db.execute('select * from protfolio'):
    print(row)