lilyluo@Lilys-M2-Air FSO Exercises % git branch
  main
  part1
  part2
* part2-2.15
lilyluo@Lilys-M2-Air FSO Exercises % git stash
Saved working directory and index state WIP on part2-2.15: 4e2a966 Part 2.14: phonebook - add delete functionality with warning and correct db id string vs number problem
lilyluo@Lilys-M2-Air FSO Exercises % git checkout -b part2-2.16
Switched to a new branch 'part2-2.16'
lilyluo@Lilys-M2-Air FSO Exercises % git stash pop
On branch part2-2.16
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   part2/phonebook/db.json
        modified:   part2/phonebook/src/App.jsx

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        part2/phonebook/components/Notification.jsx

no changes added to commit (use "git add" and/or "git commit -a")
Dropped refs/stash@{0} (ed9314c71d23cc69d0a2b184ef0183fa425d24f2)
lilyluo@Lilys-M2-Air FSO Exercises % git checkout part2-2.15
M       part2/phonebook/db.json
M       part2/phonebook/src/App.jsx
Switched to branch 'part2-2.15'
lilyluo@Lilys-M2-Air FSO Exercises % git checkout part2-2.16
Switched to branch 'part2-2.16'
lilyluo@Lilys-M2-Air FSO Exercises % git stash pop
No stash entries found.
lilyluo@Lilys-M2-Air FSO Exercises % git status
On branch part2-2.16
nothing to commit, working tree clean
lilyluo@Lilys-M2-Air FSO Exercises % git branch --show-current
part2-2.16
lilyluo@Lilys-M2-Air FSO Exercises % git stash list
lilyluo@Lilys-M2-Air FSO Exercises % git reflog show stash
fatal: ambiguous argument 'stash': unknown revision or path not in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'
lilyluo@Lilys-M2-Air FSO Exercises % git checkout part2-2.15
Switched to branch 'part2-2.15'
lilyluo@Lilys-M2-Air FSO Exercises % git reflog show stash
fatal: ambiguous argument 'stash': unknown revision or path not in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'
lilyluo@Lilys-M2-Air FSO Exercises % git reflog -n 50
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/head:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{10}: checkout: moving from part2 to part2-2.15
:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{10}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{11}: checkout: moving from part2-:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{10}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{11}: checkout: moving from part2-2.15 to part2
:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{10}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{11}: checkout: moving from part2-2.15 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{10}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{11}: checkout: moving from part2-2.15 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{12}: commit: Part 2.14: phonebook - add delete functio:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{10}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{11}: checkout: moving from part2-2.15 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{12}: commit: Part 2.14: phonebook - add delete functionality with warning and correct db id string vs number problem
47af715 (tag: part2-2.13-complete) HEAD@{13}: checkout: moving from part2 :...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{10}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{11}: checkout: moving from part2-2.15 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{12}: commit: Part 2.14: phonebook - add delete functionality with warning and correct db id string vs number problem
47af715 (tag: part2-2.13-complete) HEAD@{13}: checkout: moving from part2 to part2-2.15
:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{10}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{11}: checkout: moving from part2-2.15 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{12}: commit: Part 2.14: phonebook - add delete functionality with warning and correct db id string vs number problem
47af715 (tag: part2-2.13-complete) HEAD@{13}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{14}: merge part2-2.13: Fast-forwa:...skipping...
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{10}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{11}: checkout: moving from part2-2.15 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{12}: commit: Part 2.14: phonebook - add delete functionality with warning and correct db id string vs number problem
47af715 (tag: part2-2.13-complete) HEAD@{13}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{14}: merge part2-2.13: Fast-forward
:
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{0}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{1}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{2}: checkout: moving from part2-2.16 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{3}: checkout: moving from part2-2.15 to part2-2.16
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{4}: reset: moving to HEAD
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{5}: checkout: moving from part2 to part2-2.15
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{6}: merge part2-2.14: Fast-forward
47af715 (tag: part2-2.13-complete) HEAD@{7}: checkout: moving from part2-2.14 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{8}: Branch: renamed refs/heads/part2-2.15 to refs/heads/part2-2.14
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{10}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{11}: checkout: moving from part2-2.15 to part2
4e2a966 (HEAD -> part2-2.15, tag: part2-2.14-complete, origin/part2, part2-2.16, part2) HEAD@{12}: commit: Part 2.14: phonebook - add delete functionality with warning and correct db id string vs number problem
47af715 (tag: part2-2.13-complete) HEAD@{13}: checkout: moving from part2 to part2-2.15
47af715 (tag: part2-2.13-complete) HEAD@{14}: merge part2-2.13: Fast-forward
8359c17 (tag: part2-2.12-complete) HEAD@{15}: checkout: moving from part2-2.13 to part2
47af715 (tag: part2-2.13-complete) HEAD@{16}: commit: Part 2.13: phonebook - extracted communication into separate module
8359c17 (tag: part2-2.12-complete) HEAD@{17}: checkout: moving from part2 to part2-2.13
8359c17 (tag: part2-2.12-complete) HEAD@{18}: merge part2-2.12: Fast-forward
aa06bef (tag: part2-2.11-complete) HEAD@{19}: checkout: moving from part2-2.12 to part2
8359c17 (tag: part2-2.12-complete) HEAD@{20}: commit: Part 2.12: phonebook - save new number to backend added
aa06bef (tag: part2-2.11-complete) HEAD@{21}: checkout: moving from part2 to part2-2.12
aa06bef (tag: part2-2.11-complete) HEAD@{22}: merge part2-2.11: Fast-forward
9b0c00a (tag: part2-2.10-complete) HEAD@{23}: checkout: moving from part2-2.11 to part2
aa06bef (tag: part2-2.11-complete) HEAD@{24}: commit: Part 2.11: phonebook - db.json, json-server, axios with useEffect mounting
9b0c00a (tag: part2-2.10-complete) HEAD@{25}: checkout: moving from part2 to part2-2.11
9b0c00a (tag: part2-2.10-complete) HEAD@{26}: merge part2-2.10: Fast-forward
b9eaa49 (tag: part2-2.9-complete) HEAD@{27}: checkout: moving from part2-2.10 to part2
9b0c00a (tag: part2-2.10-complete) HEAD@{28}: commit: Part 2.10: phonebook - refactor components
b9eaa49 (tag: part2-2.9-complete) HEAD@{29}: checkout: moving from part2 to part2-2.10
b9eaa49 (tag: part2-2.9-complete) HEAD@{30}: merge part2-2.9: Fast-forward
3202988 (tag: part2-2.8-complete) HEAD@{31}: checkout: moving from part2-2.9 to part2
b9eaa49 (tag: part2-2.9-complete) HEAD@{32}: commit: Part 2.9: phonebook - bonus - add search filter without case sensitivity
3202988 (tag: part2-2.8-complete) HEAD@{33}: checkout: moving from part2 to part2-2.9
3202988 (tag: part2-2.8-complete) HEAD@{34}: merge part2-2.8: Fast-forward
86fd80d (tag: part2-2.7-complete) HEAD@{35}: checkout: moving from part2-2.8 to part2
3202988 (tag: part2-2.8-complete) HEAD@{36}: commit: Part 2.8: phonebook - add number input element and handler
86fd80d (tag: part2-2.7-complete) HEAD@{37}: checkout: moving from part2 to part2-2.8
86fd80d (tag: part2-2.7-complete) HEAD@{38}: merge part2-2.7: Fast-forward
01bc319 (tag: part2-2.6-complete) HEAD@{39}: checkout: moving from part2-2.7 to part2
86fd80d (tag: part2-2.7-complete) HEAD@{40}: commit: Part 2.7: phonebook - prevent adding same name again
01bc319 (tag: part2-2.6-complete) HEAD@{41}: checkout: moving from part2 to part2-2.7
01bc319 (tag: part2-2.6-complete) HEAD@{42}: merge part2-2.6: Fast-forward
f38a5e3 (tag: part2-2.5-complete) HEAD@{43}: checkout: moving from part2-2.6 to part2
01bc319 (tag: part2-2.6-complete) HEAD@{44}: commit: Part 2.6: phonebook - add new person to phonebook
f38a5e3 (tag: part2-2.5-complete) HEAD@{45}: checkout: moving from part2 to part2-2.6
f38a5e3 (tag: part2-2.5-complete) HEAD@{46}: merge part2-2.5: Fast-forward
1ac8781 (tag: part2-2.4-complete) HEAD@{47}: checkout: moving from part2-2.5 to part2
f38a5e3 (tag: part2-2.5-complete) HEAD@{48}: commit: Part 2.5: courseinfo - Course component separation - skipped using a components folder
1ac8781 (tag: part2-2.4-complete) HEAD@{49}: checkout: moving from part2 to part2-2.5
1ac8781 (tag: part2-2.4-complete) HEAD@{50}: merge part2-2.4: Fast-forward
 ESCOC



 axios with useEffect mounting







er without case sensitivity



t and handler



e again



book



ation - skipped using a components folder


(END)



 axios with useEffect mounting







er without case sensitivity



t and handler



e again



book



ation - skipped using a components folder



lilyluo@Lilys-M2-Air FSO Exercises % git show --name-only ed9314c71d23cc69d0a2b184ef0183fa425d24f2
commit ed9314c71d23cc69d0a2b184ef0183fa425d24f2
Merge: 4e2a966 fbbdb27
Author: Lilyfc <coralcatcodes@gmail.com>
Date:   Sun Jan 25 11:10:19 2026 -0700

    WIP on part2-2.15: 4e2a966 Part 2.14: phonebook - add delete functionality with warning and correct db id string vs number problem

part2/phonebook/db.json
part2/phonebook/src/App.jsx
lilyluo@Lilys-M2-Air FSO Exercises % git checkout part2-2.16
Switched to branch 'part2-2.16'
lilyluo@Lilys-M2-Air FSO Exercises % git status
On branch part2-2.16
nothing to commit, working tree clean
lilyluo@Lilys-M2-Air FSO Exercises % git stash apply ed9314c71d23cc69d0a2b184ef0183fa425d24f2
On branch part2-2.16
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   part2/phonebook/db.json
        modified:   part2/phonebook/src/App.jsx

no changes added to commit (use "git add" and/or "git commit -a")
lilyluo@Lilys-M2-Air FSO Exercises % git show ed9314c71d23cc69d0a2b184ef0183fa425d24f2^2:part2/phonebook/components/Notification.jsx > part2/phonebook/components/Notification.jsx
fatal: path 'part2/phonebook/components/Notification.jsx' exists on disk, but not in 'ed9314c71d23cc69d0a2b184ef0183fa425d24f2^2'
lilyluo@Lilys-M2-Air FSO Exercises % git add part2/phonebook/components/Notification.jsx
lilyluo@Lilys-M2-Air FSO Exercises % git show ed9314c71d23cc69d0a2b184ef0183fa425d24f2^2:part2/phonebook/components/Notification.jsx > part2/phonebook/components/Notification.jsx
fatal: path 'part2/phonebook/components/Notification.jsx' exists on disk, but not in 'ed9314c71d23cc69d0a2b184ef0183fa425d24f2^2'
lilyluo@Lilys-M2-Air FSO Exercises % git show ed9314c71d23cc69d0a2b184ef0183fa425d24f2^3:part2/phonebook/components/Notification.jsx > part2/phonebook/components/Notification.jsx
fatal: invalid object name 'ed9314c71d23cc69d0a2b184ef0183fa425d24f2^3'.
lilyluo@Lilys-M2-Air FSO Exercises % 