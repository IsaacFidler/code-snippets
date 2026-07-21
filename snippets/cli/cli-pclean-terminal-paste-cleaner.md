---
Title: pclean - Terminal Paste Cleaner
Description: Strip ▎ block-quote markers, trailing whitespace, and extra blank lines from clipboard text
Tags:
  - cli
  - clipboard
  - macos
---

```python
#!/usr/bin/env python3
# Install: sudo cp /tmp/pclean /usr/local/bin/pclean && sudo chmod +x /usr/local/bin/pclean
# Usage:   pclean              # clean clipboard in-place
#          pbpaste | pclean | pbcopy  # explicit pipeline
import sys, re, subprocess

def process(text):
    text = re.sub(r'▎ ?', '', text)
    text = '\n'.join(line.rstrip() for line in text.split('\n'))
    text = re.sub(r'\n{3,}', '\n\n', text)
    return text

if sys.stdin.isatty():
    raw = subprocess.run(['pbpaste'], capture_output=True, text=True).stdout
    subprocess.run(['pbcopy'], input=process(raw), text=True)
    print('Clipboard cleaned.', file=sys.stderr)
else:
    sys.stdout.write(process(sys.stdin.read()))
```
