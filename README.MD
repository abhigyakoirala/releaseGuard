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

## Configuration

The API reads basic metadata from `appsettings.json`:

- `Application:Name`
- `Application:Version`
- `Environment`

Current default values are:

- Name: `ReleaseGuardApi`
- Version: `1.0.0`
- Environment: `dev`

## Repository Notes

- Repo-local agent guidance lives in `AGENTS.md` and `SKILL.md`.
- Planning is tracked in `PLAN.md` and `STEPS.md`.
- The sample HTTP file lives at `app/dotnetapi/releaseGuard.api/releaseGuard.api.http`.

<!-- readme-sync-base: a90c4f8c505d23bc1f678cc5f7d961280b3673d6 -->
