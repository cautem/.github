<h1 align="center">cautem</h1>

<p align="center">
  <img src="./cautem-org-avatar.png" alt="cautem logo" width="144">
</p>

<p align="center">
  <strong>Agent sandboxes in Go</strong><br>
  Policy-bound containers for Cursor, Claude, Codex — and anything you bring.
</p>

<p align="center">
  <a href="https://cautem.github.io/sandbox.dev/"><img src="https://img.shields.io/badge/docs-cautem--haven.github.io-3F51B5?logo=materialformkdocs&logoColor=white" alt="Documentation"></a>
  <a href="https://opensource.org/licenses/Apache-2.0"><img src="https://img.shields.io/badge/License-Apache--2.0-blue.svg" alt="License"></a>
  <a href="https://github.com/cautem/cautem-cli"><img src="https://img.shields.io/badge/Go-1.27+-00ADD8?logo=go" alt="Go Version"></a>
  <a href="https://github.com/cautem/cautem-cli/releases"><img src="https://img.shields.io/badge/status-beta-orange" alt="beta"></a>
</p>

---

## Documentation

**[cautem.github.io](https://cautem.github.io/sandbox.dev/)** — shared docs for all modules (EN / RU).

| | |
|--|--|
| English | [Home](https://cautem.github.io/sandbox.dev/) · [Get started](https://cautem.github.io/sandbox.dev/get-started/) |
| Русский | [Главная](https://cautem.github.io/sandbox.dev/ru/) · [Быстрый старт](https://cautem.github.io/sandbox.dev/ru/get-started/) |
| Docker | [EN](https://cautem.github.io/sandbox.dev/providers/docker/) · [RU](https://cautem.github.io/sandbox.dev/ru/providers/docker/) |
| Podman | [EN](https://cautem.github.io/sandbox.dev/providers/podman/) · [RU](https://cautem.github.io/sandbox.dev/ru/providers/podman/) |

Source: [cautem.github.io](https://github.com/cautem/sandbox.dev) (Material for MkDocs).

---

## cautem

**cautem** runs coding agents inside hardened Docker sandboxes. YAML policy controls filesystem and egress; an egress sidecar enforces it; an optional gateway provides registry, provider compose, and relayed exec.

```bash
curl -fsSL https://raw.githubusercontent.com/cautem/cautem-cli/main/install.sh | bash
cautem sandbox create --name demo --workspace . --policy policies/default.yaml
```

### Repositories

| Repo | Role |
|------|------|
| **[cautem.github.io](https://github.com/cautem/sandbox.dev)** | Shared docs → [site](https://cautem.github.io/sandbox.dev/) |
| [cautem-cli](https://github.com/cautem/cautem-cli) | `cautem` CLI, policies, agent images |
| [cautem-core](https://github.com/cautem/cautem-core) | Policy schema + egress engine |
| [cautem-providers](https://github.com/cautem/cautem-providers) | Provider profiles + compose |
| [cautem-proxy](https://github.com/cautem/cautem-proxy) | Egress sidecar + `policy.local` |
| [cautem-driver](https://github.com/cautem/cautem-driver) | Docker / Podman compute drivers |
| [cautem-runtime](https://github.com/cautem/cautem-runtime) | Sandbox glue, `cautem-init`, images |
| [cautem-gateway](https://github.com/cautem/cautem-gateway) | RPC control-plane daemon |
| [cautem-display](https://github.com/cautem/cautem-display) | noVNC helpers |
| [cautem-sdk](https://github.com/cautem/cautem-sdk) | Go client |
| [cautem-python](https://github.com/cautem/cautem-python) | Python client |
| [slogx](https://github.com/cautem/slogx) | Structured slog helpers |

### Images (GHCR)

```text
ghcr.io/cautem/cautem/gateway
ghcr.io/cautem/cautem/sandboxes/{base,gui,gpu,cursor,claude,codex}
```

### Design

- **Multi-repo** — each module is its own git remote (not a monorepo)
- **Shared docs** — one Material for MkDocs site for all modules
- **Default deny** — L4/L7 egress allowlists in `cautem-core`
- **OpenShell-shaped** — host-gateway alias `host.cautem.internal`, provider attach, BYOC

Apache-2.0 © cautem
