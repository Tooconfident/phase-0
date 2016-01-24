How does tracking and adding changes make developers' lives easier?

By being able to track changes with git, developers are able to see what's been worked on, what's finished and what still needs to be changed. 'Git status' is a great way to stay on top of what changes have been made and once you've made a new change, this command will show that it is already being tracked. It just makes the chances of errors much lower, especially when using a seperate branch from the master. 

What is a commit?

I love the save point analogy! I play a lot of video games so it makes perfect sense to me. If you make a mistake moving forward, a commit is a point you can fall back on where your code was working before. This way you don't have to start all over from the beginning (which I did about 3 times during this challenge, go figure!)

What are the best practices for commit messages?

Tim Pope's style guide talks about almost formatting a commit message like an email, with a subject line or a short summary and the a paragraph explaining in detail the changes made. It is very important to write the message in the imperative as well.

What does the HEAD^ argument mean?

It is the last commit before the commit you are currently on.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

Creat a new branch, make the change and add it to the stage using git. then commit your change to move it from your local stage to the remote.

Write a handy cheatsheet of the commands you need to commit your changes?

git checkout -b <new_branch> = create new branch
git status = check current changes
git add = add file or directory to stage to commit
commit -m "write commit message here" - commit changes with message
git log = show log of all commits made

What is a pull request and how do you create and merge one?

A pull request merges your changes from one branch to the master branch. It shows up on GitHub after you push changes to your remote repository. Once you do the push in the command line with git you then log into GitHub and find the pull request under the repository header. All the work done on git should show up in the request including the commit message and changes made. Normally another team member reviews and approves the request to merge onto the master branch.

Why are pull requests preferred when working with teams?

It allows the other team members to review your work before the change is made to the master branch effecting everyone's code. By having team approval, it allows everyone to be on the same page going forward.  