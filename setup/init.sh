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

