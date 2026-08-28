# Interaction

- Any time you interact with me, you MUST address me as "Harp Dog"

# Writing code

- We prefer simple, clean, maintainable solutions over clever or complex ones, even if the latter are more concise or performant. Readability and maintainability are primary concerns.
- Make the smallest reasonable changes to get to the desired outcome. You MUST ask permission before reimplementing features or systems from scratch instead of updating the existing implementation.
- When modifying code, match the style and formatting of surrounding code, even if it differs from standard style guides. Consistency within a file is more important than strict adherence to external standards.
- NEVER make code changes that aren't directly related to the task you're currently assigned. If you notice something that should be fixed but is unrelated to your current task, document it in a new issue instead of fixing it immediately.
- NEVER remove code comments unless you can prove that they are actively false. Comments are important documentation and should be preserved even if they seem redundant or unnecessary to you.
- In personal projects only — meaning anything outside `~/bin/work/`, which is all work code — start each code file with a brief file-level documentation comment, a sentence or two explaining what the file does, written in whatever syntax is standard for that language: a JSDoc `/** ... */` block for JS, TS and TSX, a PEP 257 module docstring for Python, a `//` doc comment above the package clause for Go, and so on. Never invent a custom prefix for this.
- The file-level comment rule covers code only. It does not apply to data and config formats — JSON, YAML, TOML, `.env` and similar. Several of those have no comment syntax at all, and adding `//` to a JSON file breaks it, so leave them alone.
- For Markdown files in personal projects, express the file-level description as YAML frontmatter rather than a comment: a `---` delimited block at the very top of the file with a `description:` key holding one sentence on what the document is for. Never use an HTML comment for this. Where a Markdown file already carries frontmatter, add the `description:` key to the existing block rather than creating a second one.
- Never add file-level documentation of any kind — a code doc comment, Markdown frontmatter, or any equivalent — to anything under `~/bin/work/`, or to any repo that does not already use it. In those cases match the surrounding convention instead, per the rule about matching surrounding style. This prohibition wins over the two rules that ask for file-level documentation.
- When writing comments, avoid referring to temporal context about refactors or recent changes. Comments should be evergreen and describe the code as it is, not how it evolved or was recently changed.
- NEVER implement a mock mode for testing or for any purpose. We always use real data and real APIs, never mock implementations.
- When you are trying to fix a bug or compilation error or any other issue, YOU MUST NEVER throw away the old implementation and rewrite without expliict permission from the user. If you are going to do this, YOU MUST STOP and get explicit permission from the user.
- NEVER name things as 'improved' or 'new' or 'enhanced', etc. Code naming should be evergreen. What is new today will be "old" someday.

# Writing markdown

- NEVER hard-wrap content in markdown files. Every logical unit — a paragraph, a single list item, a blockquote line, a table cell, a heading — MUST be one unbroken physical line, no matter how long. Do not insert manual/soft line breaks to keep lines under some column width. Let long lines run and rely on the editor's soft-wrap for display.
- This explicitly includes list items. A long bullet or numbered item stays on ONE line — never split a single item across multiple physical lines. Each new physical line under a list should be a genuinely new item, not a continuation of the previous one.
- A line break in the source is meaningful, so only break where you actually intend a new block: a new paragraph, a new list item, or a new structural element.
- This does not change intentional structure: keep blank lines between blocks, and keep genuinely separate items or paragraphs on their own lines. The rule forbids splitting one continuous sentence, paragraph, or list item across multiple physical lines.
- Code blocks and code inside markdown are exempt — wrap those as the language/tooling requires.

# Writing as me

When I ask you to write something "as me" — a Slack reply, email, PR/MR description, Jira comment, doc, whatever — use the `write-as-eric` skill rather than winging it from memory. Ambient guidance alone reliably regresses to generic, emoji-heavy AI tone; the skill forces anchoring on real quoted examples from the right context file every time. The full style system lives at `~/bin/work/my-writing-style` on the `eritchey` branch — the skill only resolves while that working tree is checked out there, not on `main`.

# Getting help

- ALWAYS ask for clarification rather than making assumptions.
- If you're having trouble with something, it's ok to stop and ask for help. Especially if it's something your human might be better at.

# Testing

- Tests MUST cover the functionality being implemented.
- NEVER ignore the output of the system or the tests - Logs and messages often contain CRITICAL information.
- TEST OUTPUT MUST BE PRISTINE TO PASS
- If the logs are supposed to contain errors, capture and test it.
- NO EXCEPTIONS POLICY: Under no circumstances should you mark any test type as "not applicable". Every project, regardless of size or complexity, MUST have unit tests, integration tests, AND end-to-end tests. If you believe a test type doesn't apply, you need the human to say exactly "I AUTHORIZE YOU TO SKIP WRITING TESTS THIS TIME"

## We practice TDD. That means:

- Write tests before writing the implementation code
- Only write enough code to make the failing test pass
- Refactor code continuously while ensuring tests still pass

### TDD Implementation Process

- Write a failing test that defines a desired function or improvement
- Run the test to confirm it fails as expected
- Write minimal code to make the test pass
- Run the test to confirm success
- Refactor code to improve design while keeping tests green
- Repeat the cycle for each new feature or bugfix

# Specific Technologies

## Shell (zsh)

- My shell is **zsh**, not bash. In zsh an unquoted `$var` does **NOT** word-split, so `set -- $pair`, `for x in $line` and similar idioms silently pass the whole string as ONE argument instead of several. This fails confusingly — the command receives one long argument and complains that it cannot parse it, rather than reporting a splitting problem.
- Never write a shell loop that depends on word-splitting. Either quote and pass explicit positional arguments (one call per item), or do the work in Python. When a command needs several values pulled out of a query result, build and run it from Python rather than assembling it in the shell.
- Other bash-isms to avoid: `${var,,}` / `${var^^}` case conversion, `declare -A` assumptions, and `echo -e`. Prefer POSIX-portable forms or Python.

## Python

- I prefer to use uv for everything (uv add, uv run, etc)
- Do not use old fashioned methods for package management like poetry, pip or easy_install.
- Make sure that there is a pyproject.toml file in the root directory.
- If there isn't a pyproject.toml file, create one using uv by running uv init.

## Lunchbox Crawler
See skill at /Users/eritchey/bin/work/lunchbox-ai-internal-marketplace/plugins/lunchbox/skills/crawl/SKILL.md

## Indeed AI Chat
MCP servers reach me through the Indeed AI Chat bridge; its auth records, logs and config live at ~/.claude/indeed-ai-chat (symlink to "~/Library/Application Support/indeed-ai-chat", which has a space in its path — use the symlink). Start with host-mcp-bridge/auth-registry.json and logs/ when an MCP server misbehaves.
