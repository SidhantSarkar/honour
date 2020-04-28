from bs4 import BeautifulSoup
import requests
import re

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'}
base_url = 'https://indiankanoon.org/'

def getIPC(keywords):
    # Build search query
    search_query = '+ORR+'.join(keywords)
    search_query = search_query.replace(' ','+')
    search_query += '+++doctypes%3A+judgments'

    url = base_url + "search/?formInput=" + search_query
    res = requests.get(url, headers = headers)

    # Parse result
    soup = BeautifulSoup(res.content, 'lxml')
    result = soup.find('div', {'class': 'results_middle'})

    result = result.find_all('div', {'class': 'result'})

    # Initialise final result
    related_acts = set()
    stop_terms = set(['The Indian Penal Code', 'The Code Of Criminal Procedure, 1973'])

    for res in result:
        temp = res.find('span')
        temp = temp.find_all('a')
        for val in temp:
            link = val['href']
            if('/doc/' in link):
                # Get intermediate doc link
                url = base_url + link
                res = requests.get(url, headers = headers)

                # Parse Result
                soup = BeautifulSoup(res.content, 'lxml')
                result = soup.find('div', {'class': 'doc_cite'})
                result = result.find('div', {'class': 'doc_cite_head'}).find_next_siblings('div')
                
                for acts in result:
                    check = acts['class'][0]
                    if (check =='doc_cite_head'):
                        break
                    act = re.sub(' +', ' ', acts.find('a').text)
                    if('vs' in act):
                        continue
                    
                    # add to result set
                    related_acts.add(act)

    res = related_acts - stop_terms
    return list(res)