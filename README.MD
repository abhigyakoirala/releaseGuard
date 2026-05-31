# releaseGuard

releaseGuard is a starter repository for API work, repo-local Codex guidance, and lightweight project planning. The currently implemented application is an ASP.NET Core minimal API under `app/dotnetapi/releaseGuard.api`.

The original README mentioned both a .NET API and a Python API. At the moment, only the .NET API exists in the codebase; a Python API is still a future addition.

## DotNet API

- Framework: `.NET 10`
- Project path: `app/dotnetapi/releaseGuard.api`
- OpenAPI support: enabled in Development builds

### Endpoints

- `GET /health`
  Returns a simple health payload with service name and a UTC timestamp.
- `GET /version`
  Returns the configured application name, version, environment, and a runtime timestamp.

## Run Locally

From the repository root:

```bash
cd app/dotnetapi/releaseGuard.api
dotnet run
```

Default local URLs from `launchSettings.json`:

- `http://localhost:5186`
- `https://localhost:7047`

Example requests:

```bash
curl http://localhost:5186/health
curl http://localhost:5186/version
```

Smoke test the running API:

```bash
./scripts/smoketest.sh
```

To target a different local base URL:

```bash
./scripts/smoketest.sh http://localhost:5000
```

## Configuration

The API reads basic metadata from `appsettings.json`:

- `Application:Name`
- `Application:Version`
- `Environment`

Current default values are:

- Name: `ReleaseGuardApi`
- Version: `1.0.0`
- Environment: `dev`

## Codex Workflow

This repository includes repo-local Codex operating files intended to be read before major implementation work:

- `AGENTS.md`
- `SKILL.md`
- `QUICKSTARTCODEX.md`
- `PLAN.md`
- `STEPS.md`

`QUICKSTARTCODEX.md` is the entry point and points Codex at the repo rules, local skill usage, and planning files.

## Template Helpers

- `setup-repo-path.sh` updates placeholder absolute paths in template documentation files after the repository is copied to a new location.
- `scripts/smoketest.sh` performs a lightweight curl-based check against the `/health` and `/version` endpoints.

## Repository Notes

- Repo-local agent guidance lives in `AGENTS.md` and `SKILL.md`.
- Planning is tracked in `PLAN.md` and `STEPS.md`.
- The sample HTTP file lives at `app/dotnetapi/releaseGuard.api/releaseGuard.api.http`.
- Repo-local planning updates can use the `.codex/skills/updateplansteps/` skill.

<!-- readme-sync-base: 789f5288db720e44331335a6acc706fe9777cd44 -->
