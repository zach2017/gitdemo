Here's a setup with four separate GitHub Actions pipeline files, one for each branch (develop, staging, integration, prod). Each pipeline will include lint, build, test, and deploy stages with echo statements, customized slightly for each branch:

1. **Develop Branch Pipeline** - `.github/workflows/develop-pipeline.yml`
```yaml
name: Develop Pipeline

on:
  push:
    branches:
      - develop

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Linting on develop branch"

  build:
    needs: lint
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Building on develop branch"

  test:
    needs: build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Testing on develop branch"

  deploy:
    needs: test
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Deploying to development environment"
```

2. **Staging Branch Pipeline** - `.github/workflows/staging-pipeline.yml`
```yaml
name: Staging Pipeline

on:
  push:
    branches:
      - staging

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Linting on staging branch"

  build:
    needs: lint
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Building on staging branch"

  test:
    needs: build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Testing on staging branch"

  deploy:
    needs: test
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Deploying to staging environment"
```

3. **Integration Branch Pipeline** - `.github/workflows/integration-pipeline.yml`
```yaml
name: Integration Pipeline

on:
  push:
    branches:
      - integration

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Linting on integration branch"

  build:
    needs: lint
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Building on integration branch"

  test:
    needs: build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Testing on integration branch"

  deploy:
    needs: test
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Deploying to integration environment"
```

4. **Prod Branch Pipeline** - `.github/workflows/prod-pipeline.yml`
```yaml
name: Production Pipeline

on:
  push:
    branches:
      - prod

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Linting on production branch"

  build:
    needs: lint
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Building on production branch"

  test:
    needs: build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Testing on production branch"

  deploy:
    needs: test
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "Deploying to production environment"
```

To implement this setup:

1. Create a `.github/workflows/` directory in your repository
2. Create each of these files with the content above
3. Commit and push to your repository
4. The pipelines will trigger automatically when you push to their respective branches

Key features of this setup:
- Each pipeline is independent and triggers only on its specific branch
- All pipelines follow the same lint -> build -> test -> deploy sequence
- The echo messages indicate which branch and environment they're running for
- Jobs run sequentially using the `needs` dependency

You can customize these further by:
- Adding specific tools (e.g., ESLint, Jest, Docker)
- Adding environment variables
- Adding deployment credentials
- Adding manual approval steps (especially for prod)
- Adding parallel jobs where appropriate
