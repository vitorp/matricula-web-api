# Contribuindo com Matricula Web API

# Como posso contribuir?
Os assuntos que precisam ser abordados se encontram nas issues e a contribuição deve ser feita seguindo essas 3 guidelines:
- Código/commits em inglês e documentação/github em português
- Código passando no CI ( Rspec e rubocop )
- Contribuições devem ser feitas por meio de pull request. Para poder fazer isso, basta fazer um fork do projeto.

# Configurando o ambiente
## Pré-requisitos
O Projeto comporta duas formas de desenvolvimento:
- Ambiente normal configurado na própria máquina
- Utilizando o docker e docker-compose

Caso tenha escolhido ambiente padrão siga o guia 'Desenvolvimeto ambiente local' do contrário siga 'Desenvolvimeto ambiente Docker'.

## Desenvolvimeto ambiente local
### Instalando Rails e Ruby
Para o desenvolvimento local necessário ter tanto ruby quanto o rails instalado na sua máquina.
Se não tiver algum dos dois, siga o link a seguir e escolha seu sistema operacional para prosseguir: https://gorails.com/setup/

### Configuração Inicial
Com as instalações concluidas execute `bundle install` no diretório do projeto e depois `rails db:setup` e pronto o servidor
já estará pronto pra ser iniciado com `rails s`.

### Testando
Para testes é utilizado o framework e comando `rspec` e é feita uma analise estática através do `rubocop`.

## Desenvolvimeto ambiente Docker

### Instalando Docker & Docker Compose
Para o desenvolvimento com o docker, é necessário ter tanto o docker quanto o docker-compose instalados na sua máquina.
Se não tiver algum dos dois, siga o link a seguir e escolha seu sistema operacional para prosseguir: https://docs.docker.com/compose/install/#install-compose

### Configuração Inicial
Primeiro build a imagem do sistema com:

`docker-compose build`

Depois para subir o sistema basta executar:

`docker-compose up`

Quando não estiver utilizando o sistema execute `docker-compose down` para remover os containers e redes criados pelo docker que podem estar ocupando sua memória.

### Testando
O comando abaixo executa rspec em um container docker:

`docker-compose run --entrypoint "/bin/sh -c" web "rspec"`

Também é possivel alterar rspec por qualquer outro comando ou então executar:

`docker-compose run --entrypoint "/bin/sh" web`

para acessar a linha de comando do container. Caso utilize o sistema um container do postgres(db) precisa estar rodando.
