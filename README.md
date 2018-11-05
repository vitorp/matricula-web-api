# README

Achou que não ia ter API Matrícula Web da UnB? Achou errado, dev!

A matricula-web-api tem como objetivo concentrar todas as informações do Matrícula Web em uma API pública de fácil acesso. Todas as informações foram retiradas utilizando este [Crawler do Matricula Web](https://github.com/danilodelyima/mwcrawler).

## Objetivos

1. Ser uma API pública de fácil acesso ao Matricula Web UnB.
2. Poder auxiliar criação de serviços e produtos que auxiliem a vida do estudante da UnB.
3. Promover a cultura de contribuição a software aberto entre os alunos e professores da UnB.

Mais informações se encontram no [CONTRIBUTING.md](./CONTRIBUTING.md)

## Deploy da API
### Pushando imagem para o Heroku
Antes de dar deploy na aplicação é necessário rodar o build da imagem e mandar pro registro do heroku. O comando a seguir faz o build e dá push na imagem criada:

`heroku container:push web --recursive --context-path .`
Já que mantemos o dockerfile numa pasta aninhada temos que usar a flag ```--recursive```. Quando utilizando a flag ```--recursive``` precisamos definir o contexto com a flag ```--context-path```.

### Release
Depois de dar push na imagem só é necessário publicar utilizando:

`heroku container:release web`

### CI/CD
Codeship é a plataforma usada para o deploy. Os passos anteriores são realizados automaticamente quando um push para a master é realizado. 
