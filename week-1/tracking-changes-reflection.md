
### How does tracking and adding changes make developers' lives easier?

By making sure no changes are made in the master- that instead they are changed in a fork, tested there (hopefully), and then added being reviewed in a pull. There is reflection and looking at the file changes in every step in order to prevent error.
### What is a commit?
A commit is a set of changes in git. It's similar to a save of a file in that, until the changes are commited, they can't be pushed or pulled.
### What are the best practices for commit messages?
Imperative tense, 50 characters, explain what is changed and why.
### What does the HEAD^ argument mean?
The last commit.
### What are the 3 stages of a git change and how do you move a file from one stage to the other?
1. working - when you are editing the file.
2. add - git add
3. commit - git commit

### Write a handy cheatsheet of the commands you need to commit your changes?
 touch fileName
 git add fileName
 git commit -m "Write a Commit Message here"

### What is a pull request and how do you create and merge one?
To create a pull request, first you must push the changes up from the terminal
git push origin branch name
To merge it, you have to go into github and you'll be able to click a button to "Compare & pull request"
Give it a title and description, and click the button "Create Pull request"
Then, ideally another developer looks at the changes, and merges the pull request through navigating to the page and clicking the button "Merge pull requests", and then confirming.

Why are pull requests preferred when working with teams?

Pull requests are preferable because they allow one team member to make changes in one part of a repository, and someone else to review those changes before they get committed to the mail branch.