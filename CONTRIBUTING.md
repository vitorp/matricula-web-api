# Contribuindo com Matricula Web Api

# Como posso contribuir?
Os assuntos que precisam ser abordados se encontram nas issues e a contribuição deve ser feita seguindo essas 3 guidelines:
- Código/commits em inglês e documentação/github em português
- Código passando no CI ( Rspec e rubocop )
- Contribuições devem ser feitas por meio de pull request

# Configurando o ambiente
## Requisitos
Primeiro escolha se como você irá desenvolver:
- Ambiente padrão da sua máquina
- Utilizando Docker

Caso tenha escolhido ambiente padrão siga o guia 'Desenvolvimeto ambiente local' do contrário siga 'Desenvolvimeto ambiente Docker'.

## Desenvolvimeto ambiente local
### Instalando Ruby & bundle
Guia de instalação Bolado do ruby/bundle aqui.

### Configuração Inicial
Com as instalações concluidas execute `bundle install` no diretório do projeto e depois `rails db:setup` e pronto o servidor
já estará pronto pra ser iniciado com `rails s`.

### Testando
Para testes é utilizado o framework e comando `rspec` e é feita uma analise estática através do `rubocop`.

## Desenvolvimeto ambiente Docker

### Instalando Docker & Docker Compose
Guia de instalação MANEIRO do Docker/Docker-compose aqui.

### Configuração Inicial
Primeiro build a imagem do sistema com:

`docker-compose build`

Depois para subir o sistema basta executar:

`docker-compose up`

Quando não estiver utilizando o sistema execute `docker-compose down` para remover os containers e redes criado pelo docker que podem estar ocupando sua memória.

### Testando
O comando abaixo executa rspec em um container docker:

`docker-compose run --entrypoint "/bin/sh -c" web "rspec"`

Também é possivel alterar rspec por qualquer outro comando ou então executar:

`docker-compose run --entrypoint "/bin/sh" web`

para acessar a linha de comando do container. Caso utilize o sistema um container do postgres(db) precisa estar rodando.
