import requests
r = requests.get(url='http://search.twitter.com/search.json?q=python&rpp=5')
print(r.json())