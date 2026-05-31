# Codex Quick Start

Read these files first:

1. [AGENTS.md](/Users/akdev/development/releaseGuard/AGENTS.md)
2. [SKILL.md](/Users/akdev/development/releaseGuard/SKILL.md)
3. [PLAN.md](/Users/akdev/development/releaseGuard/PLAN.md)
4. [STEPS.md](/Users/akdev/development/releaseGuard/STEPS.md)

## Repo Intent

This repo is a reusable starter for:

- VM automation and hardening
- Codex repo-local instructions and skills
- lightweight planning files for a new project

## Default Expectations

- keep all work inside this repository
- update `AGENTS.md` and `SKILL.md` before major implementation begins
- keep `PLAN.md` forward-looking
- keep `STEPS.md` as a factual completion log

## Included Local Skills

- [.codex/skills/updateplansteps/SKILL.md](/Users/akdev/development/releaseGuard/.codex/skills/updateplansteps/SKILL.md)
- [.codex/skills/updatereadmehistory/SKILL.md](/Users/akdev/development/releaseGuard/.codex/skills/updatereadmehistory/SKILL.md)

Invoke them with:

- `$updateplansteps`
- `$updatereadmehistory`

Use `updateplansteps` when you need to:

- update `PLAN.md`
- update `STEPS.md`
- add or remove milestones
- record completed work
- restructure implementation steps

Use `updatereadmehistory` when you need to:

- update `README.MD` or `README.md` from git history
- document only code changes added since the last README sync
- keep a `readme-sync-base` marker current
