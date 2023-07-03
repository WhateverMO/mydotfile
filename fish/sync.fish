curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher remove ilancosman/tide@v5
fisher install ilancosman/tide@v5
git rm fish_variables --cached
rm fishd.tmp.*
