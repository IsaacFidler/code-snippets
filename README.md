# Personal Code Snippets Manager

This repository helps you manage your personal code snippets as individual Markdown files. You can quickly create and search your snippets using a shell script and Raycast.

## Project Structure

- Each snippet lives in its own Markdown file under a category folder.
- Categories are top-level directories (e.g. `react/`, `nestjs/`, `sql/`).

## Adding a New Snippet

Run the helper script to create a new snippet:

```bash
./new-snippet.sh
```

It will prompt you for a category and a snippet title (in kebab-case), create the folder if needed, and open the snippet in VS Code (if available).

## Using Raycast

### Markdown Snippets Extension

1. Install the "Markdown Snippets" extension for Raycast.
2. Configure the extension to point to this repository’s root directory.
3. Invoke the extension (e.g. using the `mdsnippets` command) and start typing to search snippets.

### Script Command

Alternatively, you can add a script command in Raycast to search snippets:

```bash
#!/usr/bin/env bash
REPO_DIR="<path-to-repo>"
grep -R --color=always "" "$REPO_DIR"/*.md
```

Replace `<path-to-repo>` with the path to this repository, save it as `search-snippets.sh`, make it executable, and add it to Raycast.

## Why One Snippet Per File

Keeping one snippet per file improves search performance, makes it easy to organize metadata (like tags and descriptions), and simplifies sharing and versioning individual snippets.
