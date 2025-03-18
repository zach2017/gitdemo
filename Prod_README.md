Let's create a simple GitHub repository template with those four branches. Here's a step-by-step setup that you could use as a template:

1. First, here's a basic repository structure with initial files:

```
my-repo-template/
├── .gitignore
├── README.md
├── src/
│   └── main.py  (or your preferred language file)
└── tests/
    └── test_main.py
```

2. Here's a bash script to set up the repository with the four branches:

```bash
# setup_branches.sh

# Initialize git repository
git init

# Create initial files
echo "# My Repository Template" > README.md
echo "__pycache__" > .gitignore
echo "*.pyc" >> .gitignore
mkdir src tests
touch src/main.py tests/test_main.py

# Initial commit on main
git add .
git commit -m "Initial commit"

# Create and setup develop branch
git branch develop
git checkout develop
echo "# Development Branch" >> README.md
git add .
git commit -m "Setup develop branch"

# Create and setup staging branch
git branch staging
git checkout staging
echo "# Staging Branch" >> README.md
git add .
git commit -m "Setup staging branch"

# Create and setup integration branch
git branch integration
git checkout integration
echo "# Integration Branch" >> README.md
git add .
git commit -m "Setup integration branch"

# Create and setup prod branch
git branch prod
git checkout prod
echo "# Production Branch" >> README.md
git add .
git commit -m "Setup prod branch"

# Return to main branch
git checkout main

echo "Repository setup complete with branches: main, develop, staging, integration, prod"
```

3. Here's a sample `.github/workflows/ci.yml` file for basic CI:

```yaml
name: CI Pipeline

on:
  push:
    branches:
      - develop
      - staging
      - integration
      - prod

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.x'
      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          # Add your dependencies here
      - name: Run tests
        run: |
          python -m unittest discover tests
```

To use this template:

1. Create a new repository on GitHub
2. Clone it locally
3. Copy these files into your repository
4. Run the setup script: `bash setup_branches.sh`
5. Push all branches to remote:
```bash
git push origin main
git push origin develop
git push origin staging
git push origin integration
git push origin prod
```

This creates a basic template with:
- `main`: The default branch (often kept empty or as a base)
- `develop`: For active development
- `staging`: For pre-production testing
- `integration`: For integrating various features
- `prod`: For production-ready code

You can modify the script and files based on your specific needs:
- Add more files to the initial structure
- Modify the .gitignore for your tech stack
- Adjust the CI workflow
- Add branch protection rules in GitHub settings
- Add specific documentation to README.md

Would you like me to customize this template further for a specific programming language or add any additional features?