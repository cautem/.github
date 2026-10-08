<h1 align="center">cauteum</h1>

<p align="center">
  <strong>Agent sandboxes in Go</strong><br>
  Policy-bound containers for Cursor, Claude, Codex — and anything you bring.
</p>

<p align="center">
  <a href="https://cauteum.github.io/"><img src="https://img.shields.io/badge/docs-cauteum.github.io-3F51B5?logo=materialformkdocs&logoColor=white" alt="Documentation"></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License"></a>
  <a href="https://github.com/cauteum/cauteum-cli"><img src="https://img.shields.io/badge/Go-1.27+-00ADD8?logo=go" alt="Go Version"></a>
  <a href="https://github.com/cauteum/cauteum-cli/releases"><img src="https://img.shields.io/badge/status-alpha-critical" alt="alpha"></a>
</p>

---

## Documentation

**[cauteum.github.io](https://cauteum.github.io/)** — shared docs for all modules (EN / RU).

| | |
|--|--|
| English | [Home](https://cauteum.github.io/) · [Get started](https://cauteum.github.io/get-started/) |
| Русский | [Главная](https://cauteum.github.io/ru/) · [Быстрый старт](https://cauteum.github.io/ru/get-started/) |
| Docker | [EN](https://cauteum.github.io/providers/docker/) · [RU](https://cauteum.github.io/ru/providers/docker/) |
| Podman | [EN](https://cauteum.github.io/providers/podman/) · [RU](https://cauteum.github.io/ru/providers/podman/) |

Source: [cauteum.github.io](https://github.com/cauteum/cauteum.github.io) (Material for MkDocs).

---

## cauteum

**cauteum** runs coding agents inside hardened Docker sandboxes. YAML policy controls filesystem and egress; an egress sidecar enforces it; an optional gateway provides registry, provider compose, and relayed exec.

```bash
curl -fsSL https://raw.githubusercontent.com/cauteum/cauteum-cli/main/install.sh | bash
cauteum sandbox create --name demo --workspace . --policy policies/default.yaml
```

### Repositories

| Repo | Role |
|------|------|
| **[cauteum.github.io](https://github.com/cauteum/cauteum.github.io)** | Shared docs → [site](https://cauteum.github.io/) |
| [cauteum-cli](https://github.com/cauteum/cauteum-cli) | `cauteum` CLI, policies, agent images |
| [cauteum-core](https://github.com/cauteum/cauteum-core) | Policy schema + egress engine |
| [cauteum-providers](https://github.com/cauteum/cauteum-providers) | Provider profiles + compose |
| [cauteum-proxy](https://github.com/cauteum/cauteum-proxy) | Egress sidecar + `policy.local` |
| [cauteum-driver](https://github.com/cauteum/cauteum-driver) | Docker / Podman compute drivers |
| [cauteum-runtime](https://github.com/cauteum/cauteum-runtime) | Sandbox glue, `cauteum-init`, images |
| [cauteum-gateway](https://github.com/cauteum/cauteum-gateway) | Control-plane HTTP daemon |
| [cauteum-display](https://github.com/cauteum/cauteum-display) | noVNC helpers |
| [cauteum-sdk](https://github.com/cauteum/cauteum-sdk) | Go client |
| [cauteum-python](https://github.com/cauteum/cauteum-python) | Python client |
| [slogx](https://github.com/cauteum/slogx) | Structured slog helpers |

### Images (GHCR)

```text
ghcr.io/cauteum/cauteum/gateway
ghcr.io/cauteum/cauteum/sandboxes/{base,gui,gpu,cursor,claude,codex}
```

### Design

- **Multi-repo** — each module is its own git remote (not a monorepo)
- **Shared docs** — one Material for MkDocs site for all modules
- **Default deny** — L4/L7 egress allowlists in `cauteum-core`
- **OpenShell-shaped** — host-gateway alias `host.cauteum.internal`, provider attach, BYOC

MIT © cauteum
