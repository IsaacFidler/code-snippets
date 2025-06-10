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

## Secret Scanning

To help prevent accidental commits of credentials and other secrets, this project includes:

- **CI-level secret scanning** via GitHub Actions (`.github/workflows/secret-scan.yml`) that runs [Gitleaks](https://github.com/zricethezav/gitleaks) on every push and pull request.
- **Local scan script** that you can run at any time:

  ```bash
  npm run scan:secrets
  ```

- **Pre-commit hook** (powered by [Husky](https://github.com/typicode/husky)) that automatically scans for secrets before each commit and blocks the commit if any leaks are found.

### Installation

#### Gitleaks

```bash
# macOS (Homebrew)
brew install gitleaks

# Linux / other
curl -sSL https://github.com/zricethezav/gitleaks/releases/latest/download/gitleaks_$(uname -s)_$(uname -m).tar.gz \
  | sudo tar xz -C /usr/local/bin
```

_or, if you have Go installed:_

```bash
go install github.com/zricethezav/gitleaks/v8@latest
```

#### Husky

```bash
npm install husky --save-dev
npx husky install
npx husky add .husky/pre-commit "npm run scan:secrets"
```

These steps (in addition to having the `scan:secrets` script in `package.json`) will ensure that Gitleaks runs locally and in CI to catch any leaked secrets early.

## Linting & Formatting

We use [markdownlint](https://github.com/DavidAnson/markdownlint) and [Prettier](https://prettier.io) to keep our Markdown files clean and consistently formatted.

### CLI

- Lint Markdown files:

  ```bash
  yarn lint:md
  ```

- Check formatting (Prettier):

  ```bash
  yarn lint
  ```

- Automatically format all Markdown files:

  ```bash
  yarn format:md
  ```

If Prettier reports any formatting issues (e.g. line-length), run `yarn format:md` to fix them.

### VSCode Integration

To have linting and formatting work automatically in VSCode:

1. Install these extensions:

   - **Prettier – Code formatter** (`esbenp.prettier-vscode`)
   - **Markdownlint** (`DavidAnson.vscode-markdownlint`)

2. Add a `.vscode/settings.json` file with the following content:

   ```json
   {
     "editor.formatOnSave": true,
     "[markdown]": {
       "editor.defaultFormatter": "esbenp.prettier-vscode",
       "editor.formatOnSave": true
     }
   }
   ```
