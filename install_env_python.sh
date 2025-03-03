#!/bin/bash

# --------------------------------------------------
# Nome do script: setup_python_dev.sh
# Uso:
#   1) Torne o script executável:
#      chmod +x setup_python_dev.sh
#   2) Execute (idealmente como root ou via sudo):
#      sudo ./setup_python_dev.sh
# --------------------------------------------------

# Verifica se está executando como root (ou via sudo).
if [[ $EUID -ne 0 ]]; then
  echo "Este script deve ser executado como root (ou com sudo)."
  exit 1
fi

set -e  # Interrompe a execução se ocorrer um erro

# Definição de cores
GREEN="\e[32m"
YELLOW="\e[33m"
RED="\e[31m"
NC="\e[0m" # Reset de cor

# Definição de variáveis
WORKSPACE_DIR="$HOME/Workspace/Projetos-Python"
VENV_DIR="$WORKSPACE_DIR/venv"
PYCHARM_DESKTOP_FILE="/usr/share/applications/pycharm.desktop"
PYCHARM_DESKTOP_LINK="$HOME/Desktop/pycharm.desktop"
PYCHARM_TAR="/tmp/pycharm.tar.gz"
PYCHARM_INSTALL_DIR="/opt/pycharm"
TEST_FILE="$WORKSPACE_DIR/test_env.py"

# Identificar a distribuição Linux
distro=$(lsb_release -is 2>/dev/null || cat /etc/*release 2>/dev/null | grep -Eo "(Ubuntu|Debian|Mint|Fedora|Arch|Manjaro|OpenSUSE|CentOS)")

# Definir local correto para a área de trabalho
case "$distro" in
    Ubuntu|Debian|Mint)
        DESKTOP_DIR="$HOME/Desktop"
        ;;
    Fedora|CentOS|OpenSUSE)
        DESKTOP_DIR="$HOME/Área de Trabalho"
        ;;
    Arch|Manjaro)
        DESKTOP_DIR="$HOME/desktop"
        ;;
    *)
        DESKTOP_DIR="$HOME/Desktop"  # Padrão para outras distros
        ;;
esac

# Atualizar pacotes
echo -e "${YELLOW}Atualizando pacotes do sistema...${NC}"
sudo apt update && sudo apt upgrade -y

# Instalar pacotes essenciais apenas se não estiverem instalados
REQUIRED_PACKAGES=(python3 python3-pip python3-venv wget curl git build-essential cmake pkg-config libopencv-dev libtbbmalloc2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-dev)
for package in "${REQUIRED_PACKAGES[@]}"; do
    if ! dpkg -l | grep -q "^ii  $package"; then
        echo -e "${YELLOW}Instalando $package...${NC}"
        sudo apt install -y "$package"
    else
        echo -e "${GREEN}$package já está instalado.${NC}"
    fi
done

# Criar diretório de trabalho se não existir
if [ ! -d "$WORKSPACE_DIR" ]; then
    mkdir -p "$WORKSPACE_DIR"
    echo -e "${GREEN}Diretório $WORKSPACE_DIR criado.${NC}"
else
    echo -e "${YELLOW}Diretório $WORKSPACE_DIR já existe.${NC}"
fi

    sudo chown -R "$USER:$USER" "$WORKSPACE_DIR"  # Garante que o usuário tenha permissão total

# Criar ambiente virtual Python
if [ ! -d "$VENV_DIR" ]; then
    echo -e "${YELLOW}Criando ambiente virtual Python em $VENV_DIR...${NC}"
    python3 -m venv "$VENV_DIR"
    echo -e "${GREEN}Ambiente virtual criado.${NC}"
else
    echo -e "${GREEN}Ambiente virtual já existe.${NC}"
fi

# Ativar ambiente virtual e instalar pacotes
source "$VENV_DIR/bin/activate"
echo -e "${YELLOW}Instalando pacotes para Visão Computacional no ambiente virtual...${NC}"
PYTHON_PACKAGES=(numpy opencv-python tensorflow torch torchvision scikit-image scikit-learn matplotlib pandas tqdm)
for package in "${PYTHON_PACKAGES[@]}"; do
    if ! pip show "$package" >/dev/null 2>&1; then
        echo -e "${YELLOW}Instalando $package...${NC}"
        pip install "$package"
    else
        echo -e "${GREEN}$package já está instalado.${NC}"
    fi
done

echo -e "${YELLOW}Criando e executando script de teste...${NC}"
# Criar script de teste com animação visual
cat > "$TEST_FILE" <<EOL
import time
from tqdm import tqdm

print("\n🚀 Inicializando ambiente Python...")

# Simulação de carregamento com animação
for _ in tqdm(range(20), desc="Configurando ambiente", ascii=" █"):
    time.sleep(0.2)

print("\n✅ Ambiente Python configurado com sucesso!")
print("Obrigado por utilizar o script de configuração do ambiente Python.")
print("Desejo sucesso nos seus estudos e projetos.")
print("\nAtt.\nWillian Rocha - Desenvolvedor de Software.")
EOL

# Executar script de teste
echo -e "${YELLOW}Executando test_env.py...${NC}"
python "$TEST_FILE"
deactivate

echo -e "${GREEN}Configuração concluída! Reinicie o sistema ou execute PyCharm com $PYCHARM_INSTALL_DIR/bin/pycharm.sh.${NC}"
