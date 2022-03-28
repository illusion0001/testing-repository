test=$'\n<details>'
test+=$'\n<summary>Changelog (Click to Expand)</summary>'
test+=$'\n\n'
test+=$'```'
test+=$'\n'$(git log --oneline | tac | nl | tac)
test+=$'\n```'
test+=$'\n\n'
test+='</details>'
echo "$test" > cl.md
cat cl.md
