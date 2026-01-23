# Personal Code Snippets Manager

This repository helps you manage your personal code snippets as individual Markdown files. You can quickly create and search your snippets using a shell script and Raycast.

## Project Structure

```text
code-snippets/
├── snippets/           # All snippets live here
│   ├── cli/
│   ├── docker/
│   ├── git/
│   ├── graphql/
│   ├── javascript/
│   ├── nestjs/
│   ├── nextjs/
│   ├── prisma/
│   ├── react/
│   ├── sql/
│   ├── testing/
│   ├── typescript/
│   └── ...
├── new-snippet         # Script to create new snippets
├── package.json
└── README.md
```

Each snippet lives in its own Markdown file under a category folder inside `snippets/`.

## Naming Conventions

All names use **kebab-case** (lowercase with hyphens):

| Type       | Example                                        |
| ---------- | ---------------------------------------------- |
| Categories | `react`, `styled-components`, `cli`            |
| Snippets   | `use-debounce-hook.md`, `amend-last-commit.md` |

The `new-snippet` script auto-converts any input to kebab-case, so you can type `SQL` or `mySnippet` and it will be normalized automatically.

## Adding a New Snippet

Run the helper script from anywhere:

```bash
./new-snippet
# or if added to PATH:
new-snippet
```

The script will:

1. **Show numbered categories** for quick selection (type `3` instead of `react`)
2. **Prompt for snippet title** (auto-converts to kebab-case)
3. **Prompt for code language** (defaults to `bash`)
4. **Open your editor** if no code provided inline
5. **Auto-commit** the new snippet to git

Example session:

```text
Existing categories:
   1) cli
   2) docker
   3) git
   ...
  15) typescript
   n) New category

Select category (number or name): 3
Snippet title: Stash Changes
→ Using: git/stash-changes.md

Common languages: bash, typescript, tsx, javascript, sql, graphql...
Code language [bash]:
```

The script generates a Markdown file with YAML front matter:

````markdown
---
Title: Stash Changes
Description: Code snippet for Stash Changes.
Tags:
  - git
---

```bash
git stash
```
````

## Using Raycast

### Snippet Surfer Extension

1. Install the "Snippet Surfer" extension for Raycast.
2. Configure the extension to point to the `snippets/` folder (not the repo root).
3. Search and copy snippets directly from Raycast.

### Script Command (Alternative)

You can also add a script command in Raycast to search snippets:

```bash
#!/usr/bin/env bash
SNIPPETS_DIR="$HOME/dev-projects/code-snippets/snippets"
grep -R --color=always "" "$SNIPPETS_DIR"
```

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

### Ignoring False Positives

If you have templates or examples that Gitleaks flags wrongly (e.g., a template curl request), you can skip that line by appending an inline allow directive:

```text
-H "Authorization: Bearer YOUR_TOKEN_HERE" # gitleaks:allow
```

Alternatively, to ignore entire files or directories (such as template files), you can add a `.gitleaksignore` file in the repository root listing paths to exclude from scanning. For example:

```text
snippets/api-tools/curl-post-request.md
```

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
