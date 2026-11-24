#!/usr/bin/env python3
"""Fetch a public sample API response and save it as JSON."""
import json
from pathlib import Path
from urllib.request import Request, urlopen
from urllib.error import URLError, HTTPError

URL = 'https://jsonplaceholder.typicode.com/todos/1'
output = Path(__file__).with_name('response.json')
try:
    req = Request(URL, headers={'User-Agent': 'DeveloperPortfolio-Student/1.0'})
    with urlopen(req, timeout=15) as response:
        data = json.load(response)
    if not isinstance(data, dict) or not {'userId','id','title','completed'} <= data.keys():
        raise ValueError('Unexpected API response')
    output.write_text(json.dumps(data, indent=2) + '\n', encoding='utf-8')
    print('API request successful')
    print(f'Todo ID: {data["id"]}')
    print(f'Title: {data["title"]}')
    print(f'Completed: {data["completed"]}')
    print(f'Saved to: {output}')
except (URLError, HTTPError, TimeoutError, ValueError) as error:
    print(f'API request failed: {error}')
    raise SystemExit(1)
