#!/usr/local/bin/fish

function bold_echo
  set_color -o; echo "$argv"; set_color normal;
end

# Visual Studio Code, extensions
set FILE_CODE backups/vscode.txt
if test -f "$FILE_CODE"
  bold_echo "→ Visual Studio Code, installing extensions…"
  cat $FILE_CODE | xargs -L 1 code --install-extension | pr -to2
else
  echo "↓ Visual Studio Code, skipping…"
end
