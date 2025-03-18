# DevSecOpsDemo

GitHub Actions template that includes lint, build, test, and deploy stages, with each stage simply echoing its name. 

```yaml
# .github/workflows/pipeline.yml

name: CI/CD Pipeline

# Trigger the workflow on push to specified branches
on:
  push:
    branches:
      - develop
      - staging
      - integration
      - prod

# Define the jobs
jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      - name: Run linting
        run: echo "Linting stage"

  build:
    needs: lint  # Runs after lint job completes
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      - name: Run build
        run: echo "Build stage"

  test:
    needs: build  # Runs after build job completes
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      - name: Run tests
        run: echo "Test stage"

  deploy:
    needs: test  # Runs after test job completes
    runs-on: ubuntu-latest
    # Only run deploy on prod branch
    if: github.ref == 'refs/heads/prod'
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      - name: Run deployment
        run: echo "Deploy stage"
```

This template:

1. Triggers on push to any of the four branches (develop, staging, integration, prod)
2. Creates four sequential jobs:
   - `lint`: Simulates code linting
   - `build`: Simulates building the project
   - `test`: Simulates running tests
   - `deploy`: Simulates deployment (only runs on prod branch)
3. Uses job dependencies (`needs`) to ensure they run in order
4. Each job simply echoes its stage name
5. Includes a condition to only run deploy on the prod branch

To use this:
1. Place it in your repository under `.github/workflows/pipeline.yml`
2. Push it to any of the specified branches
3. Check the Actions tab in your GitHub repository to see the workflow run

You can enhance this template by:
- Adding real linting commands (e.g., eslint, pylint)
- Adding actual build steps
- Adding real test commands
- Adding actual deployment steps
- Adding environment-specific configurations
- Adding parallel testing options

