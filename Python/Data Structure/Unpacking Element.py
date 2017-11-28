record = ('Dave', 'dave@example.com', '773-555-1212', '847-555-1212')

name, email, *phone_number = record
print(phone_number)


records = [
('foo', 1, 2),
('bar', 'hello'),
('foo', 3, 4),
]

def do_foo(x,y):
    print("foo", x, y)

def do_bar(x):
    print("bar", x)

for tag, *args in records:
    if tag=='foo':
        do_foo(*args)
    elif tag=='bar':
        do_bar(*args)