# Treinando um pouco o uso de Ruby e Rspec com TDD e BDD

Treinando um pouco de testes com ruby, rspec utilizando a técnica de TDD e BDD

## Instalação

- No terminal

```bash
bundle init
```

- adicionar ao Gemfile

>gem 'rspec'

- No terminal

```bash
bundle install
```

- Verificando a instalação

```bash
rspec --version
```

## Criando a estrutura de teste

- Criar a estrutura do projeto

```bash
rspec --init
```

## Formas de executar o projeto

```bash
rspec
```

ou

```bash
rspec -fd
```

- Exportando resultado em formato de arquivo

```bash
rspec --format html --out report.html -fd
```

ou

```bash
rspec --format RspecJunitFormatter --out report.xml -fd
```
