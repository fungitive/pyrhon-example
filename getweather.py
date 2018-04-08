
import urllib.request
def getHtml(url):
    page = urllib.request.urlopen(url)
    html = page.read()
    page.close()
    return html
import re
def getWeather(html):
    html = html.decode('utf-8')
    reg = '<a title=.*?>(.*?)</a>.*?<span>(.*?)</span>.*?<b>(.*?)</b>'
    weatherList = re.compile(reg).findall(html)
    return weatherList

html = getHtml("https://tieba.baidu.com/p/5358253788")
print(getWeather(html))