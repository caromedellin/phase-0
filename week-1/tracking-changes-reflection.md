How does tracking and adding changes make developers' lives easier?
  Because it makes it easier to collaborate
What is a commit?
  It's the save point for git to track the changes in your code
What are the best practices for commit messages?
  If it will be a long message no longer than 72 lines, if it's a short one around 50 characters
What does the HEAD^ argument mean?
  Head is your last commit for staging and unstaging files
What are the 3 stages of a git change and how do you move a file from one stage to the other?
  git add
  git commit
  git push origin master
  you unstage changes with with git reset HEAD^ and git reset --soft HEAD^
  and using the git log and the branches
Write a handy cheatsheet of the commands you need to commit your changes?

  git add .
  git commit -m ""
  git checkout - b new-branch
  git checkout master
  git push origin new-branch
  git push origin master
  git merge new-branch
  git reset HEAD^
  git reset --soft HEAD^

What is a pull request and how do you create and merge one?
  It's to merge the changes of your own copy of a repo with the original repo
Why are pull requests preferred when working with teams?
  Because it's polite and that way you don't overwrite code.
Go through the git workflow you just established and add your reflection to the file. (If you are creating a video reflection, add the video link to your reflection file.)
Add your changes, commit them, and make a pull request to your repository.
Merge the pull request into your master branch