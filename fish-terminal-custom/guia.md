# Setup Completo de Terminal WSL

Este repositório documenta meu setup completo de terminal no **WSL** usando **Fish Shell**, **Starship Prompt** e plugins para produtividade e estética.  

> O objetivo é permitir que qualquer pessoa deixe o terminal igual ao meu copiando os arquivos de configuração.

---

## 1️⃣ Instalar os programas necessários

### Fish Shell
````
sudo apt update
sudo apt install fish -y
````
### Tornar o Fish seu shell padrão
````
chsh -s $(which fish)
````
### Starship Prompt
````
curl -fsSL https://starship.rs/install.sh | bash
````
### Plugins e utilitários
````
sudo apt install zoxide fzf eza bat ripgrep -y
````
## 2️⃣ Copiar arquivos de configuração

Copie meu arquivo **config.fish** para o diretório de configuração do Fish:
````
~/.config/fish/config.fish
````
Este arquivo já contém:
- Inicialização do Starship

- Plugins: zoxide e fzf

- Alias básicos e de produtividade

- Configuração de eza e batcat

- Comandos Node/NPM/PNPM

- Git shortcuts

- Busca rápida com rg (substituindo grep)

### starship.toml

Copie meu arquivo **starship.toml** para:
````
~/.config/starship.toml
````
Ele já contém a personalização completa do prompt:

- Módulos: git, nodejs, python, etc.

- Cores e estilo

- Truncamento de diretórios

- Layout do prompt

## 3️⃣ Configurar fonte no terminal

Para que todos os ícones e símbolos apareçam corretamente, configure no terminal uma Nerd Font, como:

- Fira Code Nerd Font

- JetBrains Mono Nerd Font

- Cascadia Code PL

Configure isso no Windows Terminal, Alacritty ou outro que estiver usando com WSL.

## 4️⃣ Conclusão

Após instalar os programas e copiar os arquivos de configuração:

- O terminal terá Fish Shell como shell principal

- Starship Prompt personalizado

- Plugins e alias funcionando

- Terminal bonito e produtivo para desenvolvimento

### 5️⃣ Dicas extras

- Mantenha seu config.fish e starship.toml versionados no GitHub para fácil reprodução em outros computadores.

- Atualize plugins e utilitários com frequência para aproveitar novas funcionalidades.