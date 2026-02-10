# 🚀 TMUX (Prefixo: Ctrl + b)
---------------------------
  % / "   : Dividir Vert/Horiz
  z       : Zoom (Focar painel)
  c       : Nova Janela
  n / p   : Janela Prox/Ant
  [       : Scroll Mode (q sai)
  (Segure Option + Mouse p/ copiar nativo)

# 📝 NEOVIM (Leader: Espaço)
---------------------------
ARQUIVOS:
  Ctrl+p     : Buscar Arquivo (FZF)
  Ctrl+f     : Buscar Texto (Grep)
  Space + e  : Arvore (NERDTree)

NAVEGAÇÃO:
  Space + bn : Prox. Buffer
  Space + bp : Ant. Buffer
  Space + bd : Fechar Buffer
  Ctrl + ww  : Mudar de Split
  :vsp       : Dividir Vertical

# 🛠️ SYSADMIN / REDE
---------------------------
  montar-server [key] user ip path
  desmontar-server
  
  meu-ip         : Mostra IPs
  nmap -F [ip]   : Scan Portas Rápido
  lsof -i :8080  : Quem ouve a porta?
  tail -f log.txt: Acompanha log (Realtime)

# ⚡ FORMATADORES (Ouro)
---------------------------
  gg=G           : Indenta código TODO (Arruma tabulação quebrada)
  
  :%!jq .        : Formata JSON (Prettify) (Requer 'brew install jq')

# 🔢 MATH & VERSÕES
---------------------------
  Ctrl+a  : Aumenta número (+1)
            (Ótimo p/ IPs e Versões)
  Ctrl+x  : Diminui número (-1)

# 🎯 MODO "MULTI-CURSOR"
---------------------------
  * : Seleciona palavra atual
  cgn     : Muda seleção (escreva novo)
  .       : Repete na próxima
  
  :%s/old/new/gc : Substituir tudo (Confirmar)

# ✏️ EDIÇÃO RÁPIDA
---------------------------
  o / O   : Linha Baixo/Cima
  u / C-r : Desfazer / Refazer
  ci"     : Mudar dentro "aspas"
  ci(     : Mudar dentro (parent)
  dd / p  : Cortar / Colar
