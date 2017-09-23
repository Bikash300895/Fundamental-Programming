import json

data = {
    'name': 'ACME',
    'shares': 100,
    'price': 542.23
}

print(type(data)) #dict

with open('data.json', 'w') as f:
    json.dump(data,f)

with open('data.json', 'r') as f:
    data = json.load(f)

print(data)