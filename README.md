# Neovim — Configuração Pessoal

Configuração completa do Neovim com vim-plug, focada em produtividade no dia a dia: busca fuzzy, Git integrado, linting, múltiplos cursores e suporte a Markdown/Jupyter.

---

## Referência rápida — codificação no dia a dia

> **Leader:** `Espaço` · **Clipboard:** integrado ao sistema (`unnamedplus`)

### Os 10 atalhos que você mais vai usar

| Atalho | Ação |
|--------|------|
| `Ctrl+p` | Buscar arquivo (FZF) |
| `Ctrl+f` | Buscar texto no projeto (Ag / ripgrep) |
| `Ctrl+t` | Abrir/fechar NERDTree (explorador) |
| `Espaço w` | Salvar arquivo |
| `Espaço bn` / `Espaço bp` | Próximo / anterior buffer |
| `Espaço bd` | Fechar buffer |
| `Ctrl+c` (modo visual) | Copiar para área de transferência |
| `gc` + movimento | Comentar/descomentar linha (NerdCommenter) |
| `Ctrl+l` | Toggle Git blame inline |
| `Espaço ev` | Abrir `init.vim` para editar config |

### Navegação e splits

| Atalho | Ação |
|--------|------|
| `Ctrl+ww` | Alternar entre splits |
| `:vsp` | Split vertical |
| `:sp` | Split horizontal |
| `Espaço cd` | Mudar diretório para pasta do arquivo atual |
| `Espaço pwd` | Mostrar caminho completo do arquivo |
| `Espaço ls` | Listar buffers abertos |

### Git rápido

| Atalho / Comando | Ação |
|------------------|------|
| `Espaço ga` | `git add .` |
| `Espaço gc` | `git commit` |
| `:Gstatus` | Status do repositório (Fugitive) |
| `:Gdiff` | Diff do arquivo atual |
| `:BlamerToggle` | Mostrar/ocultar autor de cada linha |

### Edição essencial (Vim nativo)

| Atalho | Ação |
|--------|------|
| `ci"` / `ci(` / `ci{` | Mudar texto dentro de aspas / parênteses / chaves |
| `gg=G` | Auto-indentar arquivo inteiro |
| `:%s/old/new/gc` | Substituir em todo o arquivo (com confirmação) |
| `Ctrl+a` / `Ctrl+x` | Incrementar / decrementar número sob cursor |
| `u` / `Ctrl+r` | Desfazer / refazer |
| `o` / `O` | Nova linha abaixo / acima |

### Formatação e utilitários

| Comando | Ação |
|---------|------|
| `:%!jq .` | Formatar JSON (requer `jq` instalado) |
| `:W` | Salvar com sudo (`:W`) |
| `Espaço m` | Criar diretório pai do arquivo se não existir |
| `Espaço pt` / `Espaço en` | Corretor ortográfico PT-BR / EN-US |

---

## Instalação

### 1. Clonar o repositório

```bash
git clone <url-do-repo> ~/.config/nvim
```

Ou mover manualmente a pasta para `~/.config/nvim`.

### 2. Instalar plugins

Abra o Neovim e execute:

```vim
:PlugInstall
```

Os plugins são instalados em `~/.config/nvim/plugged/`.

### 3. Dependências externas

| Ferramenta | Uso | Instalação (macOS) |
|------------|-----|---------------------|
| **Neovim** | Editor | `brew install neovim` |
| **ripgrep** | Busca `:Ag` | `brew install ripgrep` |
| **fzf** | Busca fuzzy | Instalado via plugin (`fzf#install()`) |
| **jq** | Formatar JSON | `brew install jq` |
| **toilet** | ASCII art (`Espaço f`) | `brew install toilet` |
| **Nerd Font** | Ícones na statusline | Ver seção abaixo |

### 4. Fonte Nerd Font (obrigatória para ícones)

```bash
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" \
  "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf"
```

Configure o terminal para usar **Droid Sans Mono Nerd Font** (ou outra Nerd Font compatível).

### 5. Verificar instalação

```bash
nvim --version
nvim -c "PlugStatus" -c "qa"
```

---

## Estrutura do repositório

```
~/.config/nvim/
├── init.vim          # Configuração principal
├── autoload/
│   └── plug.vim      # Gerenciador vim-plug
├── plugged/          # Plugins instalados (gitignored)
├── cheat_sheet.md    # Referência rápida complementar
├── tmux.conf         # Config tmux compatível com esta setup
└── README.md         # Esta documentação
```

---

## Plugins instalados

Todos os plugins são declarados em `init.vim` via [vim-plug](https://github.com/junegunn/vim-plug).

### Ortografia e idioma

| Plugin | Descrição |
|--------|-----------|
| [vim-spell-pt-br](https://github.com/mateusbraga/vim-spell-pt-br) | Dicionário ortográfico em português brasileiro |

### Visual e interface

| Plugin | Descrição |
|--------|-----------|
| [vim-devicons](https://github.com/ryanoasis/vim-devicons) | Ícones por tipo de arquivo (requer Nerd Font) |
| [vim-indentguides](https://github.com/thaerkh/vim-indentguides) | Guias visuais de indentação (`▏`) |
| [papercolor-theme](https://github.com/NLKNguyen/papercolor-theme) | Tema principal (PaperColor dark) |
| [molokai](https://github.com/tomasr/molokai) | Tema alternativo disponível |
| [vim-coloresque](https://github.com/gko/vim-coloresque) | Preview de cores em código CSS/hex |
| [vim-emoji](https://github.com/junegunn/vim-emoji) | Suporte a emoji no editor |
| [vim-airline](https://github.com/vim-airline/vim-airline) | Barra de status avançada |
| [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) | Temas para airline (usa `papercolor`) |
| [battery.vim](https://github.com/lambdalisue/battery.vim) | Indicador de bateria na statusline |

### Edição e produtividade

| Plugin | Descrição |
|--------|-----------|
| [nerdcommenter](https://github.com/preservim/nerdcommenter) | Comentar/descomentar código |
| [auto-pairs](https://github.com/jiangmiao/auto-pairs) | Fecha automaticamente `()`, `[]`, `{}`, aspas |
| [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) | Edição com múltiplos cursores (estilo VS Code) |
| [vim-signature](https://github.com/kshenoy/vim-signature) | Marcadores visuais (bookmarks) no gutter |
| [vim-polyglot](https://github.com/sheerun/vim-polyglot) | Syntax highlighting para dezenas de linguagens |

### Busca e navegação de arquivos

| Plugin | Descrição |
|--------|-----------|
| [fzf](https://github.com/junegunn/fzf) | Fuzzy finder (backend) |
| [fzf.vim](https://github.com/junegunn/fzf.vim) | Comandos Vim: `:Files`, `:Buffers`, `:Ag`, etc. |
| [nerdtree](https://github.com/preservim/nerdtree) | Explorador de arquivos em árvore |

### Git

| Plugin | Descrição |
|--------|-----------|
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Comandos Git dentro do Vim (`:Git`, `:Gstatus`, etc.) |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) | Indicadores +/- no gutter para mudanças Git |
| [blamer.nvim](https://github.com/APZelos/blamer.nvim) | Git blame inline por linha |

### Linting e qualidade de código

| Plugin | Descrição |
|--------|-----------|
| [ale](https://github.com/dense-analysis/ale) | Linting e fixing assíncrono em tempo real |

### Markdown, apresentações e Jupyter

| Plugin | Descrição |
|--------|-----------|
| [vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc) | Gera sumário em Markdown (`:GenTocGFM`) |
| [presenting.vim](https://github.com/sotte/presenting.vim) | Modo apresentação de slides a partir de Markdown |
| [jupytext.vim](https://github.com/goerz/jupytext.vim) | Suporte a notebooks Jupyter via Jupytext |

---

## Atalhos personalizados completos

Definidos em `init.vim`. `<leader>` = `Espaço`.

### Arquivos e buffers

| Atalho | Comando | Descrição |
|--------|---------|-----------|
| `Ctrl+p` | `:Files` | Busca fuzzy de arquivos |
| `Ctrl+f` | `:Ag` | Busca texto (abre prompt) |
| `Ctrl+t` | `:NERDTreeToggle` | Toggle explorador NERDTree |
| `Espaço w` | `:w` | Salvar |
| `Espaço bn` | `:bn` | Próximo buffer |
| `Espaço bp` | `:bp` | Buffer anterior |
| `Espaço bd` | `:bd` | Fechar buffer |
| `Espaço fbd` | `:bd!` | Forçar fechamento do buffer |
| `Espaço ls` | `:ls` | Listar buffers |

### Diretórios e caminhos

| Atalho | Descrição |
|--------|-----------|
| `Espaço cd` | `cd` para diretório do arquivo atual + mostra pwd |
| `Espaço pwd` | Exibe caminho absoluto do arquivo |
| `Espaço m` | Cria diretório pai (`mkdir -p`) se não existir |

### Configuração

| Atalho | Descrição |
|--------|-----------|
| `Espaço ev` | Abre `~/.config/nvim/init.vim` em split vertical |
| `Espaço sv` | Recarrega config (`source init.vim`) |

### Git

| Atalho | Descrição |
|--------|-----------|
| `Espaço ga` | `Git add .` |
| `Espaço gc` | `Git commit` |
| `Ctrl+l` | Toggle Git blame (Blamer) |

### Ortografia

| Atalho | Descrição |
|--------|-----------|
| `Espaço pt` | Ativa spell check em português |
| `Espaço en` | Ativa spell check em inglês (en_us) |

### Utilitários

| Atalho | Descrição |
|--------|-----------|
| `Espaço f` | ASCII art da linha atual (`toilet`) |
| `Espaço F` | ASCII art (variante) |
| `Espaço 1` | ASCII art com borda (`toilet -F border`) |
| `Ctrl+c` (visual) | Copia seleção para clipboard do sistema |

### Comando customizado

```vim
:W    " Salva arquivo com privilégios de root (sudo tee)
```

---

## Comandos dos plugins

### FZF / fzf.vim

| Comando | Descrição |
|---------|-----------|
| `:Files` | Buscar arquivos no diretório atual |
| `:GFiles` | Buscar arquivos rastreados pelo Git |
| `:Buffers` | Listar e trocar buffers |
| `:Ag <termo>` | Buscar texto (usa ripgrep/ag) |
| `:Lines` | Buscar em todas as linhas abertas |
| `:Tags` | Buscar tags do projeto |
| `:History` | Histórico de arquivos recentes |

Dentro do FZF: `Ctrl+t` abre em nova aba, `Ctrl+x` em split horizontal, `Ctrl+v` em split vertical.

### NERDTree

| Comando | Descrição |
|---------|-----------|
| `:NERDTreeToggle` | Abrir/fechar (`Ctrl+t`) |
| `:NERDTreeFind` | Abrir e focar arquivo atual |
| `:NERDTreeFocus` | Focar na árvore |

Atalhos dentro do NERDTree: `Enter` abre, `o` expande pasta, `s` abre em split, `i` abre em nova aba.

### Vim-Fugitive

| Comando | Descrição |
|---------|-----------|
| `:Git` | Shell Git interativo |
| `:Gstatus` | Status visual do repositório |
| `:Gcommit` | Fazer commit |
| `:Gdiff` | Diff do buffer atual |
| `:Gblame` | Blame do arquivo |
| `:Gwrite` | Stage do buffer atual |
| `:Gread` | Restaurar buffer do index |

### NerdCommenter

| Atalho | Descrição |
|--------|-----------|
| `gcc` | Comentar/descomentar linha atual |
| `gc` + movimento | Comentar bloco (ex: `gc3j`) |
| `gcu` | Descomentar |

### ALE (linting)

| Comando | Descrição |
|---------|-----------|
| `:ALENext` | Próximo erro |
| `:ALEPrevious` | Erro anterior |
| `:ALEFix` | Aplicar fix automático |
| `:ALEInfo` | Info sobre linters ativos |

ALE detecta linters automaticamente conforme o filetype (ex: flake8/pylint para Python, eslint para JS).

### Multiple Cursors

| Atalho | Descrição |
|--------|-----------|
| `Ctrl+n` | Selecionar próxima ocorrência da palavra |
| `Ctrl+p` | Desselecionar última ocorrência |
| `Ctrl+x` | Pular ocorrência |
| `Esc` | Sair do modo multi-cursor |

Alternativa nativa Vim:

| Atalho | Descrição |
|--------|-----------|
| `*` | Seleciona palavra sob cursor |
| `cgn` | Change next occurrence |
| `.` | Repete na próxima ocorrência |

### Markdown

| Comando | Descrição |
|---------|-----------|
| `:GenTocGFM` | Gera sumário Markdown (GitHub Flavored) |
| `:PresentingStart` | Inicia modo apresentação de slides |

No modo apresentação: navegue com setas ou `n`/`p` entre slides (headers `#`).

### Blamer

| Comando | Descrição |
|---------|-----------|
| `:BlamerToggle` | Liga/desliga blame inline (`Ctrl+l`) |
| `:BlamerShow` | Mostrar blame |
| `:BlamerHide` | Ocultar blame |

---

## Configurações do editor

Opções definidas em `init.vim`:

### Geral

| Opção | Valor | Efeito |
|-------|-------|--------|
| `leader` | `Espaço` | Tecla leader |
| `clipboard` | `unnamedplus` | Clipboard do sistema |
| `mouse` | `a` | Mouse habilitado |
| `hidden` | on | Permite buffers em background |
| `autowrite` | on | Salva automaticamente ao trocar buffer |
| `switchbuf` | `usetab` | Usa abas ao trocar buffers |
| `timeoutlen` | `5000` | Timeout para sequências de teclas (ms) |

### Visual

| Opção | Valor | Efeito |
|-------|-------|--------|
| `termguicolors` | on | Cores true color |
| `background` | `dark` | Fundo escuro |
| `colorscheme` | `PaperColor` | Tema ativo |
| `number` + `relativenumber` | on | Números de linha relativos |
| `list` + `listchars` | `tab:>-,trail:-` | Mostra tabs e trailing spaces |
| `showcmd` | on | Mostra comando parcial na statusline |
| `inccommand` | `split` | Preview de substituição em split |

### Indentação

| Opção | Valor |
|-------|-------|
| `tabstop` | 4 |
| `shiftwidth` | 4 |
| `softtabstop` | 4 |
| `expandtab` | on (espaços, não tabs) |

### Ortografia

| Opção | Valor |
|-------|-------|
| `spell` | on (padrão PT) |
| `spelllang` | `pt` |

### Outros

| Opção | Valor | Efeito |
|-------|-------|--------|
| `encoding` | `utf-8` | Encoding UTF-8 |
| `history` | `10000` | Histórico de comandos ampliado |
| `ignorecase` | on | Busca case-insensitive |
| `noswapfile` | on | Sem arquivos swap |
| `backupext` | `.bak` | Extensão de backup |

### IndentGuides

```vim
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'
```

### Airline

```vim
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
```

### Auto-pares (inserção)

Ao digitar `"`, `'`, `(`, `[` ou `{`, o par correspondente é inserido automaticamente com cursor posicionado dentro.

### True color no tmux/screen

```vim
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
```

---

## Gerenciamento de plugins (vim-plug)

| Comando | Descrição |
|---------|-----------|
| `:PlugInstall` | Instalar plugins |
| `:PlugUpdate` | Atualizar plugins |
| `:PlugClean` | Remover plugins não listados |
| `:PlugStatus` | Status de cada plugin |
| `:PlugDiff` | Ver diff das atualizações |

---

## Tmux — configuração complementar

O arquivo `tmux.conf` incluído neste repo complementa o Neovim (true color, mouse, clipboard macOS).

**Prefixo tmux:** `Ctrl+b`

| Atalho | Ação |
|--------|------|
| `%` | Split vertical (mantém diretório) |
| `"` | Split horizontal (mantém diretório) |
| `c` | Nova janela (mantém diretório) |
| `z` | Zoom no painel |
| `n` / `p` | Próxima / anterior janela |
| `[` | Modo scroll (`q` para sair) |

Para usar:

```bash
cp ~/.config/nvim/tmux.conf ~/.tmux.conf
# ou link simbólico:
ln -sf ~/.config/nvim/tmux.conf ~/.tmux.conf
```

---

## Deploy em servidor remoto

### Instalar vim-plug e config no servidor

```bash
ssh user@host "mkdir -p ~/.config/nvim && curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

scp ~/.config/nvim/init.vim user@host:~/.config/nvim/
```

No servidor: `nvim` → `:PlugInstall`

### Editar arquivo remoto diretamente

```vim
:e scp://usuario@ip-do-servidor//caminho/do/arquivo
```

### Montar diretório remoto (sshfs)

```bash
brew install sshfs          # macOS
mkdir ~/Mounts/ServidorX
sshfs user@ip-do-servidor:/var/www/projeto ~/Mounts/ServidorX
```

---

## Cheat sheet complementar

Consulte também [`cheat_sheet.md`](cheat_sheet.md) para referência de:

- Comandos tmux
- Formatação (`gg=G`, `:%!jq .`)
- Edição rápida (`ci"`, `dd`, `p`)
- Comandos sysadmin/rede (`nmap`, `lsof`, `tail -f`)

---

## Problemas conhecidos

- [ ] **Debug Python 3:** o debug remoto (vdebug) não está ativo na config atual — linhas comentadas em versões anteriores do `init.vim`. Para habilitar, seria necessário reinstalar e configurar um plugin de debug compatível com Python 3.

---

## Referência de código

Configuração principal:

```1:110:init.vim
""GenTocGFM Cria Sumário em md 
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let mapleader=" "
":PresentingStart Modo de apresentacao
call plug#begin('~/.config/nvim/plugged')
	Plug 'mateusbraga/vim-spell-pt-br' 
    Plug 'ryanoasis/vim-devicons'
    ...
call plug#end()
...
```

---

## Licença e contribuição

Configuração pessoal — sinta-se livre para forkar e adaptar ao seu fluxo de trabalho.
