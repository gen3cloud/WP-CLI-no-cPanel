# Instalação do WP-CLI no cPanel

Este script automatiza o processo de instalação do WP-CLI em servidores cPanel. Ele verifica se o WP-CLI já está instalado, faz o download da versão mais recente, e garante que o WP-CLI esteja disponível globalmente.

## Pré-requisitos

- Acesso root ao servidor via SSH.
- Sistema operacional baseado em `yum` (por exemplo, CentOS, RHEL, CloudLinux).
- PHP e curl instalados no servidor.

## Como Usar

1. **Acessar o servidor via SSH**:
   Conecte-se ao servidor com privilégios de root usando um terminal:

   ```bash
   ssh root@seu-servidor
