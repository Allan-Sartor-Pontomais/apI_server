<h2>
  📃 Sobre a API
</h2>

<i>Control Calls API</i> é uma API que armazena Chamados de ajuda técnica, dentro de um database em PostgreSQL

<h2>🔧 Ferramentas utilizadas</h2>
Para o desenvolvimento do projeto, foram utilizados as principais ferramentas:
<ul>
  <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  <!-- <li><a href="https://github.com/jsonapi-serializer/jsonapi-serializer">Fast JSON</a></li> -->
  <li><a href="https://www.docker.com/">Docker</a></li>
  <li><a href="https://www.postman.com/">Insomnia</a></li>
  <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
</ul>

<h2>⚙ Rodando a aplicação</h2>
<ul>
  <li>É <b>necessário</b> possuir o <a href="https://docs.docker.com/get-docker/">Docker</a>.</li>
</ul>

<h3>Caso tudo esteja certo, siga o passo a passo abaixo:</h3>

1. Clone o repositório em sua maquina utilizando:
```sh
  $ git clone https://github.com/Allan-Sartor-Pontomais/api_server.git
```
2. Instale as dependências do projeto:
```sh
  $ docker-compose up
```
3. Após ele finalizar à instação das dependências use o comando abaixo para parar o servidor:
```sh
  $ docker-compose down
```
3.1 Agora use o comando abaixo para criar o banco e as tabelas.
```sh
  $ docker-compose run app rake db:create db:migrate
```
4. Caso queira vocẽ pode usar o comando abaixo para inserir dados fictícios no banco.
```sh
  $ docker-compose run app rake db:seed
```
5. Agora pode usar o comando abaixo sempre que quiser usar à API:
```sh
  $ docker-compose up
```
Se tudo estiver certo, à API irá iniciar no endereço http://localhost:3001/api/

<hr>

<h3>Para testar as requisições do server acessar documentação Insomnia</h3>

<b>Documentação: </b> <a href="#">acessar</a>.


<!-- <h4 align="center">
    Created by <a href="https://www.linkedin.com/in/allan-gustavo-aa6844131/" target="_blank">Allan Sartor</a>
</h4> -->
