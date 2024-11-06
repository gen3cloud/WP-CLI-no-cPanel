# Instalação do WP-CLI no cPanel

Este repositório contém um script para automatizar a instalação do WP-CLI em servidores cPanel. Ele verifica se o WP-CLI já está instalado, faz o download da versão mais recente e garante que o WP-CLI esteja disponível globalmente, facilitando a administração de sites WordPress a partir da linha de comando.

## Pré-requisitos

Antes de usar este script, verifique se o servidor atende aos seguintes requisitos:

- **Acesso root** ao servidor via SSH.
- **Sistema operacional baseado em `yum`** (por exemplo, CentOS, RHEL, CloudLinux).
- **PHP e curl** instalados no servidor.

Se você estiver usando outro sistema operacional ou tiver problemas, o script pode ser adaptado para sua necessidade.

## Como Usar

### Passo 1: Acessar o servidor via SSH

Conecte-se ao servidor com privilégios de root. Abra seu terminal e digite:

## Passo 2: Baixar e preparar o script

Baixe o script de instalação diretamente do repositório para seu servidor. Use o comando curl ou wget para fazer isso:

## Usando curl:

curl -O https://raw.githubusercontent.com/gen3cloud/WP-CLI-no-cPanel/master/install_wp_cli.sh

## Usando wget:

wget https://raw.githubusercontent.com/gen3cloud/WP-CLI-no-cPanel/master/install_wp_cli.sh

## Passo 3: Tornar o script executável

Após o download, você precisa tornar o script executável. Para isso, use o comando:

chmod +x install_wp_cli.sh

## Passo 4: Executar o script

Agora, execute o script para iniciar o processo de instalação do WP-CLI:

./install_wp_cli.sh

## Passo 5: Verificação de sucesso

Após a execução, o script exibirá a versão do WP-CLI instalada e algumas informações sobre o sistema. Caso tudo tenha sido feito corretamente, você verá algo semelhante a:

WP-CLI 2.x.x
PHP: 7.x.x
OS: Linux

## O que o script faz

**Instala as dependências**

O script instala curl, php-cli, php-mbstring e git, que são necessários para o funcionamento do WP-CLI.

**Baixa o WP-CLI**

O script baixa o arquivo cli.php diretamente do repositório oficial do WP-CLI.

**Move o arquivo para o diretório de execução**

O script move o arquivo baixado para o diretório /usr/local/bin/, garantindo que o WP-CLI seja acessível de qualquer lugar no sistema.

**Torna o WP-CLI executável** Ele torna o arquivo baixado executável com o comando chmod +x.

**Verifica a instalação** Após a instalação, o script executa o comando wp --info para verificar se o WP-CLI foi instalado corretamente.

## Sistemas Operacionais Compatíveis

Este script foi desenvolvido para funcionar em servidores que utilizam sistemas operacionais baseados em yum, como:

CentOS
RHEL (Red Hat Enterprise Linux)
CloudLinux

Se você estiver usando outra distribuição Linux (como Ubuntu, Debian ou outras), o script pode precisar de ajustes, como o uso de apt no lugar de yum.

**Como Usar o WP-CLI**

Após a instalação, você pode usar o WP-CLI para gerenciar seus sites WordPress diretamente do terminal. Aqui estão alguns comandos úteis:

**Exemplo 1: Instalar um plugin**

wp plugin install jetpack --activate
Este comando instala o plugin "Jetpack" e o ativa automaticamente.

**Exemplo 2: Atualizar o WordPress**

wp core update
Este comando atualiza o WordPress para a versão mais recente.

**Exemplo 3: Criar um novo usuário**

wp user create user@example.com --role=administrator --user_pass=senha123
Este comando cria um novo usuário com o e-mail user@example.com, atribui o papel de administrador e define a senha senha123.

**Exemplo 4: Instalar e ativar um tema**

wp theme install twentytwenty --activate
Este comando instala o tema "Twenty Twenty" e o ativa.

**Exemplo 5: Atualizar plugins**

wp plugin update --all
Este comando atualiza todos os plugins instalados para suas versões mais recentes.

**Exemplo 6: Exibir informações do site**

wp core version
Este comando exibe a versão atual do WordPress instalada no site.

## Solução de Problemas

**WP-CLI não encontrado**

Se o comando wp não funcionar após a instalação, tente verificar se o diretório /usr/local/bin/ está no seu PATH:
echo $PATH

Se não estiver, adicione o caminho manualmente:

export PATH=$PATH:/usr/local/bin
Permissões: Certifique-se de que você tem permissões de root para executar o script e instalar pacotes no sistema.

## Contribuições

Se você encontrar problemas ou desejar contribuir com melhorias para este script, fique à vontade para abrir uma issue ou enviar um pull request.

## Licença

Este script está licenciado sob a MIT License.
