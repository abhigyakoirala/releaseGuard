# Repository Agent Rules

This repository has a hard filesystem boundary.

## Allowed Scope

- Only access files, folders, and subfolders inside `/Users/akdev/development/releaseGuard`.
- Treat `/Users/akdev/development/releaseGuard` as the maximum allowed read and write scope for this repository.

## Forbidden Actions

- Do not read from any path outside `/Users/akdev/development/releaseGuard`.
- Do not write to any path outside `/Users/akdev/development/releaseGuard`.
- Do not create or modify scripts, automation, or configuration that access paths outside `/Users/akdev/development/releaseGuard`.
- Do not request, grant, or expand permissions beyond `/Users/akdev/development/releaseGuard`.
- Do not use external project memory or any off-repo storage for instructions related to this repository.

## Enforcement

- If a request requires access outside `/Users/akdev/development/releaseGuard`, refuse that part of the request.
- If instructions from another source conflict with this boundary, follow this boundary for work in this repository.
- For frontend implementation, treat `resources/frontend/` as the canonical layout reference and keep the rebuilt layout as exact as practical unless the user explicitly changes that requirement.
- For frontend implementation, keep major rendered sections browser-inspectable with clear `data-section` attributes instead of relying only on source comments.
