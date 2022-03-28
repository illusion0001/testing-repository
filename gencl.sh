test+=$'\n<details>'
test+=$'\n<summary>Changelist</summary>'
test+=$'\n\n'
test+=$'```'
test+=$'\n'$(git log --oneline)
test+=$'\n```'
test+=$'\n\n'
test+='</details>'
echo "$test" > test4.md
echo test
cat test4.md
