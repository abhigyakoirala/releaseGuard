---
name: vm-codex-template
description: Use this skill for any task in this reusable VM and Codex starter repository. It defines the repo boundary, keeps VM automation under `vm/`, and treats the rest of the repo as project-boilerplate that should be adapted for the next project.
---

# VM Codex Template

This repository is a reusable starter for:

- VM automation and hardening
- Codex repo-local instructions and skills
- project planning boilerplate

Treat the repository as having these primary areas:

- `vm/` for reusable VM automation, guest configuration, and helper scripts
- `.codex/` for repo-local Codex skills
- root docs such as `AGENTS.md`, `PLAN.md`, `STEPS.md`, `README.md`, and `QUICKSTARTCODEX.md` for project setup and operating rules

## Default Workflow

1. Inspect the relevant directory before making assumptions.
2. Prefer adapting the existing VM and Codex boilerplate instead of introducing duplicate structure.
3. Keep the repo lightweight until the new project’s application structure is intentionally added.
4. When a new project is started from this template, update the planning and instruction files before adding large implementation areas.

## Directory Boundary Rule

- Only access files, folders, and subfolders inside `/Users/akdev/development/releaseGuard`.
- Do not read from, write to, or rely on any path outside `/Users/akdev/development/releaseGuard`.
- Do not add scripts, automation, or configuration intended to access anything outside `/Users/akdev/development/releaseGuard`.
- Do not request, modify, or expand permissions to go beyond `/Users/akdev/development/releaseGuard`.
- If a task would require access outside this directory, stop and treat it as out of bounds.

## Implementation Guidelines

- Favor small, readable files and direct implementations.
- Reuse and adapt existing repo patterns whenever possible.
- Keep VM-specific automation in `vm/`.
- Keep Codex-specific local skills in `.codex/skills/`.
- Keep project planning in `PLAN.md` and completion logging in `STEPS.md`.
- Do not add application-specific assumptions to the template unless the user explicitly asks for them.

## Validation

- Run the smallest useful validation for the area you changed.
- If the repo is still acting as a template, validate structure and references rather than assuming a full app build exists.

## When Context Is Missing

- Prefer placeholders that are easy to replace.
- Make reversible decisions.
- Keep the starter generic unless the user asks to specialize it for a concrete project.
