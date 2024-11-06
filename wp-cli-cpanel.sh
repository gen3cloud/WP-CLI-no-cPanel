#!/bin/bash

# Verifica se o usuário tem privilégios de root
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script precisa ser executado como root!"
    exit 1
fi

# Atualiza o sistema
echo "Atualizando o sistema..."
yum -y update

# Instala as dependências necessárias
echo "Instalando dependências..."
yum -y install curl php-cli php-mbstring git

# Baixando a versão mais recente do WP-CLI
echo "Baixando o WP-CLI..."
curl -O https://raw.githubusercontent.com/wp-cli/wp-cli/master/php/cli.php

# Move o arquivo para o diretório de execução
echo "Movendo o WP-CLI para o diretório correto..."
mv cli.php /usr/local/bin/wp

# Torna o WP-CLI executável
echo "Tornando o WP-CLI executável..."
chmod +x /usr/local/bin/wp

# Verifica se a instalação foi bem-sucedida
echo "Verificando a instalação do WP-CLI..."
wp --info

# Concluído
echo "WP-CLI instalado com sucesso!"
