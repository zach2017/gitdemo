mkdir src tests
touch src/main.py tests/test_main.py

# Initial commit on main
git add .
git commit -m "Initial commit"

# Create and setup develop branch
git branch develop
git checkout develop
echo "# Development Branch" >> Develop_README.md
git add .
git commit -m "Setup develop branch"
git push --set-upstream origin develop

# Create and setup staging branch
git branch staging
git checkout staging
echo "# Staging Branch" >> Stage_README.md
git add .
git commit -m "Setup staging branch"
git push --set-upstream origin staging

# Create and setup integration branch
git branch integration
git checkout integration
echo "# Integration Branch" >> Integration_README.md
git add .
git commit -m "Setup integration branch"
git push --set-upstream origin integration

# Create and setup prod branch
git branch prod
git checkout prod
echo "# Production Branch" >> README.md
git add .
git commit -m "Setup prod branch"
git push --set-upstream origin prod

