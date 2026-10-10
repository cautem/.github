<h1 align="center">Cauteum Haven</h1>

<p align="center">
  <img src="./cauteum-haven-org-avatar.png" alt="Cauteum Haven logo" width="144">
</p>

<p align="center">
  <strong>Agent sandboxes in Go</strong><br>
  Policy-bound containers for Cursor, Claude, Codex — and anything you bring.
</p>

<p align="center">
  <a href="https://cauteum-haven.github.io/"><img src="https://img.shields.io/badge/docs-cauteum--haven.github.io-3F51B5?logo=materialformkdocs&logoColor=white" alt="Documentation"></a>
  <a href="https://opensource.org/licenses/Apache-2.0"><img src="https://img.shields.io/badge/License-Apache--2.0-blue.svg" alt="License"></a>
  <a href="https://github.com/cauteum-haven/cauteum-cli"><img src="https://img.shields.io/badge/Go-1.27+-00ADD8?logo=go" alt="Go Version"></a>
  <a href="https://github.com/cauteum-haven/cauteum-cli/releases"><img src="https://img.shields.io/badge/status-beta-orange" alt="beta"></a>
</p>

---

## Documentation

**[cauteum-haven.github.io](https://cauteum-haven.github.io/)** — shared docs for all modules (EN / RU).

| | |
|--|--|
| English | [Home](https://cauteum-haven.github.io/) · [Get started](https://cauteum-haven.github.io/get-started/) |
| Русский | [Главная](https://cauteum-haven.github.io/ru/) · [Быстрый старт](https://cauteum-haven.github.io/ru/get-started/) |
| Docker | [EN](https://cauteum-haven.github.io/providers/docker/) · [RU](https://cauteum-haven.github.io/ru/providers/docker/) |
| Podman | [EN](https://cauteum-haven.github.io/providers/podman/) · [RU](https://cauteum-haven.github.io/ru/providers/podman/) |

Source: [cauteum-haven.github.io](https://github.com/cauteum-haven/cauteum-haven.github.io) (Material for MkDocs).

---

## Cauteum

**Cauteum** runs coding agents inside hardened Docker sandboxes. YAML policy controls filesystem and egress; an egress sidecar enforces it; an optional gateway provides registry, provider compose, and relayed exec.

```bash
curl -fsSL https://raw.githubusercontent.com/cauteum-haven/cauteum-cli/main/install.sh | bash
cauteum sandbox create --name demo --workspace . --policy policies/default.yaml
```

### Repositories

| Repo | Role |
|------|------|
| **[cauteum-haven.github.io](https://github.com/cauteum-haven/cauteum-haven.github.io)** | Shared docs → [site](https://cauteum-haven.github.io/) |
| [cauteum-cli](https://github.com/cauteum-haven/cauteum-cli) | `cauteum` CLI, policies, agent images |
| [cauteum-core](https://github.com/cauteum-haven/cauteum-core) | Policy schema + egress engine |
| [cauteum-providers](https://github.com/cauteum-haven/cauteum-providers) | Provider profiles + compose |
| [cauteum-proxy](https://github.com/cauteum-haven/cauteum-proxy) | Egress sidecar + `policy.local` |
| [cauteum-driver](https://github.com/cauteum-haven/cauteum-driver) | Docker / Podman compute drivers |
| [cauteum-runtime](https://github.com/cauteum-haven/cauteum-runtime) | Sandbox glue, `cauteum-init`, images |
| [cauteum-gateway](https://github.com/cauteum-haven/cauteum-gateway) | RPC control-plane daemon |
| [cauteum-display](https://github.com/cauteum-haven/cauteum-display) | noVNC helpers |
| [cauteum-sdk](https://github.com/cauteum-haven/cauteum-sdk) | Go client |
| [cauteum-python](https://github.com/cauteum-haven/cauteum-python) | Python client |
| [slogx](https://github.com/cauteum-haven/slogx) | Structured slog helpers |

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

Apache-2.0 © Cauteum Haven
