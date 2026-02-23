# Welcome to ThePlatforge documentation
# Git Commit Standards

Standardized commit messages ensure a readable project history, facilitate easier code reviews, and enable automated changelog generation. This project adheres to the **Conventional Commits** specification.

---

## 1. Core Structure

Every commit message consists of a header, a body, and a footer. The header has a special format that includes a type, a scope, and a subject.



**Structure:**
type(scope): subject

[optional body]

[optional footer(s)]

### Constraints
* **Subject Line:** Maximum 50 characters. 
* **Imperative Mood:** Use "Fix" instead of "Fixed" or "Fixes".
* **Body Wrap:** Manually wrap lines at 72 characters.
* **Separation:** A blank line must exist between the subject and the body.

---

## 2. Commit Type Registry

Choose the prefix that best describes the intent of your change.

| Type | Purpose |
| :--- | :--- |
| **feat** | A new feature for the user. |
| **fix** | A bug fix for the user. |
| **docs** | Changes to the documentation. |
| **style** | Formatting/Linting (no logic changes). |
| **refactor** | Code restructuring (neither a fix nor a feature). |
| **perf** | A code change that improves performance. |
| **test** | Adding missing tests or correcting existing tests. |
| **build** | Changes to build system or external dependencies. |
| **chore** | Routine maintenance or tool configuration. |

---

## 3. Grammatical Standards

To maintain a professional history, follow these conventions:

1. **Lowercase Type:** Use `feat:`, not `Feat:`.
2. **No Period:** Do not end the subject line with a period.
3. **The "Why" Rule:** Use the body to explain **why** the change was made. The code change itself shows **how** it was done.

---

## 4. Implementation Examples

### New Feature
**feat(api): add endpoint for user profile retrieval**

Implemented the GET /v1/profiles/{id} endpoint to allow mobile clients to fetch user data directly.

### Bug Fix
**fix(ui): resolve clipping on mobile navigation**

Adjusted the z-index for the navbar-brand component to ensure it doesn't overlap with the burger menu on smaller screens.

### Breaking Change
**feat(auth)!: migrate to OpenID Connect**

**BREAKING CHANGE**: The standard API Key authentication is no longer supported. Clients must migrate to OIDC tokens.

---

## 5. Atomic Commits

A commit should be **atomic**—meaning it represents one single logical change. 

* **Do not** combine a bug fix and a new feature in one commit.
* **Do not** combine a refactor and a style change in one commit.

Atomic commits are significantly easier to revert if a bug is introduced and make the git-blame history much clearer.

---

## 6. Referencing External Tasks

Always reference your ticket or issue number in the footer of the commit message.

Example Reference:
fix(search): prevent crash on empty query

The application now returns an empty array instead of throwing a null pointer.

Refs: #123, JIRA-456