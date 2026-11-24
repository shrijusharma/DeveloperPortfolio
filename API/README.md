# Q3: Git repository and API interaction
API: JSONPlaceholder public demo REST API, endpoint `GET https://jsonplaceholder.typicode.com/todos/1`.

```bash
python API/fetch_api.py
```
The Python script uses Python standard library `urllib` and `json`, validates keys, prints response fields, and writes `API/response.json`. **Run with internet access before submitting** so the placeholder JSON is replaced with the actual response.

Git commands (from `DeveloperPortfolio/`):
```bash
git init
git branch -M main
git add .
git commit -m "Add CSE103 developer portfolio capstone"
git remote add origin https://github.com/YOUR_USERNAME/DeveloperPortfolio.git
git push -u origin main
```
If `origin` exists, use `git remote set-url origin <your-url>` instead of `git remote add origin`.
Capture a screenshot of the public repository and API execution.
