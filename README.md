# DeveloperPortfolio | CSE103 Capstone

**Student:** Shriju Sharma  
**Program:** B.Tech CSE (AI & ML)  
**University:** K.R. Mangalam University  
**Expected graduation:** 2030

## Project overview
This portfolio documents beginner developer skills from four lab outcomes: Linux system documentation (Q1/CO1), Bash automation (Q2/CO2), Python API and Git workflows (Q3/CO3), and professional developer portfolio (Q4/CO4).

## Required structure
```text
DeveloperPortfolio/
├── Linux/         # Q1: Linux commands and system profile
├── ShellScripts/  # Q2: working Bash automation
├── API/           # Q3: Python REST API and JSON response
├── Portfolio/     # Q4: resume, roadmap, profile evidence
├── Screenshots/   # evidence for Q1-Q4
└── README.md      # project overview
```

## How to run
From the repository root on Linux or WSL:
```bash
bash Linux/system_profile.sh | tee Linux/system_output.txt
bash ShellScripts/student_result.sh
bash ShellScripts/multiplication_table.sh
bash ShellScripts/backup.sh Linux ShellScripts/backups
python3 API/fetch_api.py
```
The Python script calls the public JSONPlaceholder endpoint `https://jsonplaceholder.typicode.com/todos/1`, validates the response, and saves it to `API/response.json`.

## GitHub publishing
Create a **public** repository named `DeveloperPortfolio`, then in the extracted project directory run:
```bash
git init
git branch -M main
git add .
git commit -m "Add CSE103 developer portfolio"
git remote add origin https://github.com/shrijusharma/DeveloperPortfolio.git
git push -u origin main
```
If `origin` already exists, use `git remote set-url origin https://github.com/shrijusharma/DeveloperPortfolio.git` instead.

## Included portfolio evidence
The `Portfolio/` folder includes a one-page technical resume, learning roadmap, links to LinkedIn and GitHub, and screenshots supplied by the student. See `Portfolio/README.md`.

## Verification status
**Prepared, not yet fully verified or uploaded.** Q1/Q2 examples and local Git evidence were produced in a separate environment. The live API request did not complete due to network restrictions, so `API/response.json` remains a clearly labeled placeholder. A public `DeveloperPortfolio` repository and its screenshot still need to be created. See `Screenshots/EVIDENCE_NOTES.md`.

## API evidence update
`API/response.json` contains the public JSONPlaceholder response verified on 2026-11-24. `Screenshots/11_api_public_response_verified.png` illustrates that verified response; local Python execution evidence is still required.
