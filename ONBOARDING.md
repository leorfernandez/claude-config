# Briefing para o Claude — Novo Login de Leonardo Fernandez

Olá, Claude. Este arquivo é um briefing completo do meu ambiente de trabalho. Leia tudo antes de agir.

---

## Quem sou eu

**Leonardo Fernandez**
- Sócio e Coordenador de PE&G (Planejamento, Execução & Gestão) na **V4 Company** (agência de marketing de performance)
- GitHub: `leorfernandez`
- Email pessoal: ribeirleonnardo@gmail.com
- Email trabalho: leonardofernandez@v4company.com
- Idioma preferido: **Português brasileiro** — sempre responda em PT-BR

---

## O que precisa ser configurado neste login

Execute os passos abaixo **nesta ordem**, confirmando cada um antes de prosseguir:

### Passo 1 — Clonar o repositório de configuração global

```bash
git clone https://github.com/leorfernandez/claude-config ~/claude-config
```

### Passo 2 — Instalar as skills globalmente

```bash
cd ~/claude-config
chmod +x setup.sh
./setup.sh
```

Isso instala 218+ skills em `~/.claude/skills/`, disponíveis em qualquer projeto.

### Passo 3 — Clonar meus projetos

```bash
# Segundo Cérebro (vault Obsidian — principal)
git clone https://github.com/leorfernandez/segundo-cerebro ~/segundo-cerebro
```

### Passo 4 — Verificar que as skills estão carregadas

Após reiniciar o Claude Code, confirme que skills como `/pdf`, `/brainstorming`, `/copywriting` estão disponíveis.

### Passo 5 — No app do Claude desktop

Em Personalizar → Habilidades, vincular o repositório `leorfernandez/claude-config`.

---

## Meus repositórios

| Repositório | Descrição | Clone |
|---|---|---|
| `leorfernandez/claude-config` | Configuração global do Claude (skills, settings) | `~/claude-config` |
| `leorfernandez/segundo-cerebro` | Vault Obsidian — notas, reuniões, projetos V4 | `~/segundo-cerebro` |

---

## Como trabalho (preferências)

- Responda sempre em **português brasileiro**
- Respostas **curtas e diretas** — sem enrolação, sem resumo do que acabou de fazer
- Quando eu pedir para executar algo, **execute direto** sem pedir confirmação para cada detalhe pequeno
- Prefiro ver o resultado e ajustar do que aprovar cada passo
- Se algo não funcionar, **investigue a causa** antes de tentar de novo

---

## Skills disponíveis (218+)

Todas instaladas via `./setup.sh` do `claude-config`:

| Categoria | Skills |
|---|---|
| Documentos | `pdf`, `pptx`, `docx`, `xlsx` |
| Design/UI | `shadcn`, `web-design-guidelines`, `frontend-design`, `canvas-design` |
| AI/Conteúdo | `ai-image-generation`, `ai-video-generation`, `ai-music-generation`, `nano-banana-2` |
| Marketing | `copywriting`, `content-strategy`, `ad-creative`, `social-content`, `cold-email` |
| Produto (PM) | `user-stories`, `sprint-plan`, `brainstorm-okrs`, `create-prd`, `prioritize-features` |
| Dev | `vercel-react-best-practices`, `supabase-postgres-best-practices`, `webapp-testing`, `mcp-builder` |
| Estratégia | `brainstorming`, `gtm-strategy`, `launch-strategy`, `business-model`, `startup-canvas` |

---

## Como adicionar novas skills no futuro

```bash
# 1. Instalar a skill
npx skills add <fonte> -y

# 2. Copiar para o repositório de config
cp -r .agents/skills/<nome> ~/claude-config/skills/

# 3. Commitar e fazer push
cd ~/claude-config
git add skills/<nome>
git commit -m "skill: adicionar <nome>"
git push
```

---

## Estado atual (março 2026)

- 218 skills instaladas e funcionando globalmente
- Segundo Cérebro com 472 reuniões do Fireflies e 234 docs do Google Drive importados
- MCPs configurados: Google Calendar, Fireflies, Supabase, Vercel, Obsidian
- Hook automático: git push após cada comando Bash em repositório git
