
git config user.name "Venkat Jagarlamudi"
git remote set-url origin https://github.com/jvenkat255/deletenodejs.git

# ADD, Commit and push

git status
git add delete.sh
git commit -m "adding Jenkinsfile for test"
git branch temp-branch
git checkout master
git merge temp-branch
git push origin master