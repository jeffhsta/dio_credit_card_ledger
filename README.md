# CreditCardLedger

Projeto utilizado em um live coding da Digital Innovation One.

Este projeto faz o uso de biblitecas como Cowboy (servidor HTTP) e do Ecto (migrações e conexão
com banco de dados).

## Pré requisitos

Ter Elixir 1.10 ou mais novo instalado ter docker e docker compose instalado.

### Instalação do Elixir

Eu particularmente faço uso de uma ferramenta chamada (asdf)[https://github.com/asdf-vm/asdf], no
qual me permite ter várias versões de várias linguanges instalada em meu computador.

Siga os passos de instalação do readme do asdf.

Instale os plugins do Erlang e do Elixir, pelo commando

```shell
asdf plugin-add erlang
asdf plugin-add elixir
```

Para efetuar a instalação do Erlang recomendo instalar algumas dependencias listadas do (github do
plugin)[https://github.com/asdf-vm/asdf-erlang#before-asdf-install].

Após vamos instalar as linguagens e deixá-las global, usando o commando

```shell
asdf install erlang 22.3
asdf global erlang 22.3
asdf install elixir 1.10.2
asdf global elixir 1.10.2
```

Se fo preciso após a instalação execute o comando

```shell
asdf reshim
```

Para testar sua instalação é só abrir terminal interativo do Elixir.

```shell
iex
```

Para sair use CTRL+C duas vezes.

### Instalação do Docker

Para instalar o docker e docker compose eu recomendo seguir os passos do site do
(Docker)[https://www.docker.com/get-started].
