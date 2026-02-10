# COnfigurações Básicas

1 - Criar e colocar na Pasta ~/.config/nvim o clone o repo (mv repo(ND) ~pasta)
2 - Nvim init.md :PlugInstall 
3 - Fonts ` cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf `


## Coisas que tem 

1 - leader é o espaço 
2 - Ctrl + C manda para area de transferencia 
3 - bn, bd e bp mexem nos buffers 
4 - Ctrl P -> acha files 
5 -  Ctrl T é o Tree 
6 -  Ctrl F é o Ag 

## Problemas
[] Não ta reconhecendo o Python 3 para debug por algum motivo 

# Tutorial de Funcionalidades do Neovim

```markdown
# 📝 Tutorial de Funcionalidades do Neovim

## 🌟 Sumário (Gerado com `:GenTocGFM`)
- [Apresentação](#-modo-de-apresentação-presentingstart)
- [Plugins Essenciais](#-plugins-essenciais)
- [Atalhos Personalizados](#-atalhos-personalizados)
- [Gerenciamento de Arquivos](#-gerenciamento-de-arquivos)
- [Git Integrado](#-git-integrado)
- [Produtividade](#-produtividade)
- [Visual](#-visual)

## 🎤 Modo de Apresentação (`:PresentingStart`)
Transforme seu Neovim em um apresentador de slides:
- Divide o markdown em slides baseados em headers
- Navegação com setas ou `n`/`p`
- Ativado com `:PresentingStart`
- Ideal para apresentar código ou tutoriais

## 🔌 Plugins Essenciais
```vim
Plug 'mateusbraga/vim-spell-pt-br'   " Corretor PT-BR
Plug 'ryanoasis/vim-devicons'        " Ícones para arquivos
Plug 'thaerkh/vim-indentguides'      " Guias de indentação
Plug 'preservim/nerdcommenter'       " Comentários fáceis
Plug 'junegunn/fzf'                  " Busca fuzzy
Plug 'preservim/nerdtree'            " Explorer de arquivos
Plug 'APZelos/blamer.nvim'           " Git blame inline
```

## ⌨️ Atalhos Personalizados
| Atalho            | Ação                              |
|--------------------|-----------------------------------|
| `<leader>ev`       | Abrir config                     |
| `<space>w`         | Salvar arquivo                   |
| `<c-p>`            | Buscar arquivos (FZF)            |
| `<c-t>`            | Alternar NERDTree                |
| `<leader>ga`       | Git add .                        |
| `<leader>gc`       | Git commit                       |
| `<leader>f`        | Inserir texto ASCII art         |

## 📂 Gerenciamento de Arquivos
- **NERDTree**: Explorer com `Ctrl+t`
- **FZF**: Busca rápida com `Ctrl+p`
- `:Files` - Busca arquivos
- `:Ag` - Busca texto nos arquivos
- `<leader>m` - Criar diretório se não existir

## 💻 Git Integrado
- **Fugitive**: Comandos Git integrados
  - `:Gstatus` - Ver status
  - `:Gcommit` - Fazer commit
- **GitGutter**: Mostra mudanças no gutter
- **Blamer.nvim**: Mostra autor do código (toggle com `Ctrl+l`)

## ⚡ Produtividade
- **Multiple Cursors**: Edição múltipla como VS Code
- **Auto-Pairs**: Fecha automaticamente pares ([], {}, etc.)
- **ALE**: Linter em tempo real
- **NerdCommenter**: Comentar/descomentar com `gc`
- **Spell Check**: PT-BR (`<leader>pt`) ou EN (`<leader>en`)

## 🎨 Visual
```vim
colorscheme PaperColor   " Tema principal
set relativenumber       " Números relativos
set listchars=tab:>-,trail:-  " Mostrar tabs e espaços
let g:indentguides_spacechar = '▏'  " Guias de indentação bonitos
```

## 💡 Dicas Extras
1. Use `:Ag texto` para buscar em múltiplos arquivos
2. `<leader>cd` - Muda para o diretório do arquivo atual
3. `:BlamerToggle` - Mostra quem editou cada linha
4. `:GenTocGFM` - Gera sumário para markdown
5. `:set spell` - Ativa corretor ortográfico

> Configuração completa disponível em `~/.config/nvim/init.vim`

## Para Passar para um server 
# Substitua "user@host" pelo servidor que você quer configurar
ssh user@host "mkdir -p ~/.config/nvim && curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
scp ~/.config/nvim/init.vim user@host:~/.config/nvim/

# Para Editar diretamente no server 
nvim scp://usuario@ip-do-servidor//caminho/do/arquivo

# Para editar on-time 
mkdir ~/Mounts/ServidorX
sshfs user@ip-do-servidor:/var/www/projeto ~/Mounts/ServidorX
-- Obs : Precisa de um brew install sshfs 

