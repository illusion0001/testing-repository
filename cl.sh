curl -fLO https://raw.githubusercontent.com/illusion0001/illusion0001.github.io/main/_posts/_supporters.md
test=$'<details>\n'
test+=$'<summary>Changelist (Click to Expand)</summary>\n\n'
test+=$'```\n'
test+=$''$(git log --oneline | tac | nl | tac)''
test+=$'\n'
test+=$'```\n\n'
test+=$'</details>\n\n'
test+=$'<details>\n'
test+=$'<summary>Supporters (Click to Expand)</summary>\n'
test+=$'\n'
test+=$''$(cat _supporters.md)''
test+=$'\n\n'
test+=$'</details>\n'
test+=$'# Patch Files\n'
test+=$'https://illusion0001.github.io/_patch/patch.zip\n\n'
echo "$test" >> changelist.md
cat README.md >> changelist.md
cat changelist.md
