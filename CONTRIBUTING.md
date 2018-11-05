# Contribuindo com Matricula Web API

## Ruby version
  2.5.1

# Como posso contribuir?
Os assuntos que precisam ser abordados se encontram nas issues e a contribuição deve ser feita seguindo essas 3 guidelines:
- Código/commits em inglês e documentação/github em português
- Código passando no CI ( RSpec e rubocop )
- Contribuições devem ser feitas por meio de pull request. Para poder fazer isso, basta fazer um fork do projeto.

## Achou um bug?

Assegure-se que o bug não foi reportado em alguma outra issue anterior procurando em [issues](https://github.com/vitorp/matricula-web-api/issues).

Se não encontrar uma issue aberta que aponta o problema, abra uma issue. Assegure-se de incluir um título e descrição claros, com a maior quantidade de conteúdo relevante possível sobre a issue, e um pedaço de código ou um caso de teste demonstrando o comportamento que não está sendo alcançado.

## Escreveu um patch que resolve um bug?

Abra um Pull Request com o patch. Assegure-se também de colocar na descrição do PR descreve exatamente o problema e a solução. Inclua o número da issue caso se faça necessário.

## Deseja requisitar uma funcionalidade que ainda não existe na API?

Verifique se existe uma issue aberta descrevendo a funcionalidade requisitada. Em caso negativo, abra a issue descrevendo como a funcionalidade se encaixa no aspecto da API do Matricula Web, quais seus principais casos de uso e, caso tenha, uma possível estratégia de implementação. Após avaliação da equipe, ela pode ou não ser incluída no roadmap de desenvolvimento. Caso seja incluída, e você quiser contribuir com a plataforma, recomendamos olhar o ponto a seguir em como adicionar uma nova funcionalidade. 

## Você pretende adicionar uma nova funcionalidade à API do Matricula Web?

A equipe do projeto comumente coloca novas features que ainda não foram implementadas na sessão de issues para encorajar a contribuição. Caso não se encontre na seção de issues, abra uma issue descrevendo qual é a nova funcionalidade, como ela se encaixa no contexto da API e uma possível estratégia de implementação. Após a discussão com a equipe da API do MWeb, e em caso positivo para continuar, você poderá implementar a funcionalidade e submeter um PR com ela.

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



---
### **Equipe do Matrícula Web API**