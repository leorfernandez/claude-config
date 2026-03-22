# Configuração Global do Claude — Leonardo Fernandez

## Quem sou eu

**Leonardo Fernandez** — Sócio e Coordenador de PE&G (Planejamento, Execução & Gestão) na V4 Company, agência de marketing de performance.

- GitHub: leorfernandez
- Email pessoal: ribeirleonnardo@gmail.com
- Email trabalho: leonardofernandez@v4company.com
- Idioma preferido: Português brasileiro

## Sobre este repositório

Este repositório contém a **configuração global do meu ambiente Claude Code**:
- Skills disponíveis em todos os projetos
- Configurações globais
- Script de restauração para nova máquina ou novo login

## Setup em nova máquina ou novo login

```bash
git clone https://github.com/leorfernandez/claude-config
cd claude-config
chmod +x setup.sh
./setup.sh
```

Isso instala todas as skills globalmente em `~/.claude/skills/`. As skills ficam disponíveis em qualquer projeto, independente do diretório.

## Meus projetos

- **segundo-cerebro** — Vault Obsidian com notas, reuniões e projetos da V4 Company
  - Clone: `git clone https://github.com/leorfernandez/segundo-cerebro`

## Skills disponíveis (218+)

### Documentos e arquivos
`pdf`, `pptx`, `docx`, `xlsx`

### Design e UI
`shadcn`, `web-design-guidelines`, `frontend-design`, `canvas-design`, `theme-factory`

### AI e geração de conteúdo
`ai-image-generation`, `nano-banana-2`, `flux-image`, `ai-video-generation`, `ai-music-generation`, `ai-voice-cloning`, `ai-podcast-creation`

### Marketing e copy
`copywriting`, `content-strategy`, `seo-content-brief`, `ad-creative`, `social-content`, `cold-email`, `email-sequence`, `linkedin-content`, `twitter-thread-creation`

### Produto (PM)
`user-stories`, `sprint-plan`, `brainstorm-okrs`, `create-prd`, `prioritize-features`, `job-stories`, `analyze-feature-requests`, `opportunity-solution-tree`, `north-star-metric`, `lean-canvas`, `competitor-analysis`, `swot-analysis`, `market-sizing`

### Desenvolvimento
`vercel-react-best-practices`, `supabase-postgres-best-practices`, `webapp-testing`, `mcp-builder`, `test-driven-development`, `systematic-debugging`

### Estratégia e negócios
`brainstorming`, `gtm-strategy`, `launch-strategy`, `pricing-strategy`, `business-model`, `startup-canvas`, `value-proposition`

## Adicionando novas skills

1. Instalar a skill: `npx skills add <fonte> -y`
2. Copiar para este repositório: `cp -r ~/.agents/skills/<nome> ~/claude-config/skills/`
3. Commitar e fazer push
