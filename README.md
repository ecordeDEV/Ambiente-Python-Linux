# Configuracao de Ambiente de Desenvolvimento Python no Linux

Este repositório contém um **script automatizado** para configurar um ambiente de desenvolvimento **Python** completo no Linux. Ele instala o **PyCharm Community Edition**, pacotes essenciais para **Visão Computacional** e cria um diretório de trabalho para projetos.

## 📌 Recursos Instalados
- **Python3, pip e venv** para gerenciamento de pacotes e ambientes virtuais.
- **PyCharm Community Edition** (instalado globalmente em `/opt/pycharm`).
- **Bibliotecas para Visão Computacional**, incluindo:
  - OpenCV (`opencv-python`)
  - TensorFlow (`tensorflow`)
  - PyTorch (`torch`, `torchvision`)
  - Scikit-Image (`scikit-image`)
  - Scikit-Learn (`scikit-learn`)
  - Outras dependências úteis (`numpy`, `matplotlib`, `pandas`, `tqdm`)
- **Criação do diretório de trabalho**: `/home/$USER/Workspace/Projetos-Python`.
- **Criação de atalhos** do PyCharm no menu de programas e na área de trabalho.

## 📂 Estrutura do Projeto
```bash
📁 setup-python-env
│-- 📜 setup_python_env.sh   # Script de instalação
│-- 📜 README.md             # Documentação detalhada
```

## 🔧 Requisitos Mínimos
- **Sistema operacional:** Linux (Ubuntu/Debian ou derivados).
- **Espaço em disco:** Aproximadamente 3GB.
- **Acesso root** para instalação global do PyCharm e pacotes.
- **Conexão com a internet** para baixar dependências.

## 🚀 Como Instalar e Configurar

1. **Baixe o repositório:**
   ```bash
   git clone https://github.com/seu-repositorio/setup-python-env.git
   cd setup-python-env
   ```

2. **Dê permissão de execução ao script:**
   ```bash
   chmod +x setup_python_env.sh
   ```

3. **Execute o script:**
   ```bash
   ./setup_python_env.sh
   ```

💡 O script instalará todas as dependências e criará os atalhos do PyCharm.

## 🎯 Como Usar o PyCharm
Após a instalação, você pode iniciar o PyCharm de três formas:
- **Pelo menu de aplicativos** (procure por "PyCharm Community Edition").
- **Pelo atalho na área de trabalho** (caso esteja ativado).
- **Pelo terminal**:
  ```bash
  /opt/pycharm/bin/pycharm.sh
  ```

## ❗ Solução de Problemas
Se encontrar erros na instalação, tente as seguintes soluções:
- **Erro de permissão:** Execute o script com `sudo ./setup_python_env.sh`.
- **Pacote não encontrado:** Atualize os repositórios antes da instalação:
  ```bash
  sudo apt update && sudo apt upgrade -y
  ```
- **Erro no atalho do PyCharm:** Certifique-se de que ele tem permissão de execução:
  ```bash
  chmod +x ~/Desktop/pycharm.desktop
  ```

## 🤝 Contribuindo
Se quiser melhorar este script, siga estas etapas:
1. **Fork o repositório** no GitHub.
2. **Crie uma nova branch** para suas alterações:
   ```bash
   git checkout -b minha-melhoria
   ```
3. **Faça as mudanças e commite:**
   ```bash
   git add .
   git commit -m "Melhoria: descrição da mudança"
   ```
4. **Envie para o GitHub:**
   ```bash
   git push origin minha-melhoria
   ```
5. **Abra um Pull Request** e aguarde a revisão!

---
# Python Development Environment Setup on Linux

This repository contains an **automated script** to set up a complete **Python** development environment on Linux. It installs **PyCharm Community Edition**, essential packages for **Computer Vision**, and creates a working directory for projects.

## 📌 Installed Components
- **Python3, pip, and venv** for package and virtual environment management.
- **PyCharm Community Edition** (installed globally in `/opt/pycharm`).
- **Libraries for Computer Vision**, including:
  - OpenCV (`opencv-python`)
  - TensorFlow (`tensorflow`)
  - PyTorch (`torch`, `torchvision`)
  - Scikit-Image (`scikit-image`)
  - Scikit-Learn (`scikit-learn`)
  - Other useful dependencies (`numpy`, `matplotlib`, `pandas`, `tqdm`)
- **Creation of the working directory**: `/home/$USER/Workspace/Projetos-Python`.
- **Creation of shortcuts** for PyCharm in the program menu and on the desktop.

## 📂 Project Structure
```bash
📁 setup-python-env
│-- 📜 setup_python_env.sh   # Installation script
│-- 📜 README.md             # Detailed documentation
```

## 🔧 Minimum Requirements
- **Operating System:** Linux (Ubuntu/Debian or derivatives).
- **Disk Space:** Approximately 3GB.
- **Root access** for global installation of PyCharm and packages.
- **Internet connection** to download dependencies.

## 🚀 Installation and Setup

1. **Download the repository:**
   ```bash
   git clone https://github.com/your-repo/setup-python-env.git
   cd setup-python-env
   ```

2. **Grant execution permission to the script:**
   ```bash
   chmod +x setup_python_env.sh
   ```

3. **Run the script:**
   ```bash
   ./setup_python_env.sh
   ```

💡 The script will install all dependencies and create PyCharm shortcuts.

## 🎯 How to Use PyCharm
After installation, you can launch PyCharm in three ways:
- **From the application menu** (search for "PyCharm Community Edition").
- **From the desktop shortcut** (if enabled).
- **From the terminal**:
  ```bash
  /opt/pycharm/bin/pycharm.sh
  ```

## ❗ Troubleshooting
If you encounter installation errors, try the following solutions:
- **Permission error:** Run the script with `sudo ./setup_python_env.sh`.
- **Package not found:** Update repositories before installation:
  ```bash
  sudo apt update && sudo apt upgrade -y
  ```
- **PyCharm shortcut error:** Ensure it has execution permission:
  ```bash
  chmod +x ~/Desktop/pycharm.desktop
  ```

## 🤝 Contributing
If you want to improve this script, follow these steps:
1. **Fork the repository** on GitHub.
2. **Create a new branch** for your changes:
   ```bash
   git checkout -b my-improvement
   ```
3. **Make changes and commit:**
   ```bash
   git add .
   git commit -m "Improvement: description of the change"
   ```
4. **Push to GitHub:**
   ```bash
   git push origin my-improvement
   ```
5. **Open a Pull Request** and wait for review!

---
💡 **Keep this repository updated and contribute to improving Python development environment automation!** 🚀

