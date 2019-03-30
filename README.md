

# Feriados do Brasil 🏖️
Repositório para centralizar feriados brasileiros nacionais, estaduais e municipais.

## Como esta organizado?
Arquivos com feriados nacionais por ano

Arquivos com feriados estaduais por ano

Arquivos com feriados municipais por ano

Arquivos com feriados facultativos por ano

## Exemplos

### Dados
| Data |  Nome  | Tipo | Descrição|       UF| Município|
|:-----------:|:-------------------:|:---------:|:--:|:-----------------:|:-------:|
|   31/10/2019| Dia do Evangélico Francisquense     |     MUNICIPAL| De acordo com a Lei nº 0508, de 11 de novembro de 2013.| ES|    Barra de São Francisco    | 
|   29/06/2019| Dia de São Pedro|     ESTADUAL| São Pedro foi um dos doze apóstolos de Jesus Cristo, segundo o Novo Testamento e, mais especificamente, os quatro Evangelhos. Os católicos consideram Pedro como o primeiro Bispo de Roma, sendo por isso o primeiro Papa da Igreja Católica.| AL     |       | 
|   25/12/2019| Natal|     NACIONAL    | O Natal é comemorado anualmente em 25 de Dezembro. Originalmente destinado a celebrar o nascimento anual do Deus Sol no solstício de inverno, foi adaptado pela Igreja Católica no 3o século d.C., para permitir a conversão dos povos pagãos sob o domínio do Império Romano, passando a comemorar o nascimento de Jesus de Nazaré.|           |      | 
|   28/10/2019| Dia do Servidor Público|     FACULTATIVO| O dia do servidor público é feriado apenas para funcionários públicos.|  | | 


### Exemplo JSON

```
[
  {
    "data": "01/01/2019",
    "nome": "Ano Novo",
    "tipo": "NACIONAL",
    "descricao": "O Ano-Novo ou Réveillon é um evento que acontece quando uma cultura celebra o fim de um ano e o começo do próximo. A celebração do evento é também chamada Réveillon, termo oriundo do verbo francês réveiller, que em português significa DESPERTAR",
    "uf": "",
    "municipio": ""
  }
  {
    "data": "05/03/2019",
    "nome": "Carnaval",
    "tipo": "FACULTATIVO",
    "descricao": "Carnaval NÃO é um feriado oficial, é Ponto Facultativo, ou seja, cabe às empresas e orgão públicos decidirem se trabalharão ou não.",
    "uf": "",
    "municipio": ""
  },
  {
    "data": "19/04/2019",
    "nome": "Sexta-Feira Santa",
    "tipo": "NACIONAL",
    "descricao": "Também chamada de "Sexta Feira da Paixão" é a sexta-feira que ocorre antes do domingo de Páscoa, e é o dia que os cristãos lembram da crucificação de Cristo.",
    "uf": "",
    "municipio": ""
  },
  {
    "data": "20/06/2019",
    "nome": "Corpus Christi",
    "tipo": "FACULTATIVO",
    "descricao": "Ponto Facultativo no País, mas Feriado Municipal em algumas cidades.. Corpus Christi, expressão latina que significa Corpo de Cristo, é uma festa Cristã realizada na quinta-feira seguinte ao domingo da Santíssima Trindade.",
    "uf": "",
    "municipio": ""
  },
  {
    "data": "12/10/2019",
    "nome": "Nossa Senhora Aparecida",
    "tipo": "NACIONAL",
    "descricao": "Nossa Senhora da Conceição Aparecida é a padroeira do Brasil. Sua festa é celebrada em 12 de outubro, um feriado nacional desde que o Papa João Paulo II consagrou a Basílica em 1980.",
    "uf": "",
    "municipio": ""
  },
  {
    "data": "28/10/2019",
    "nome": "Dia do Servidor Público",
    "tipo": "FACULTATIVO",
    "descricao": "O dia do servidor público é feriado apenas para funcionários públicos.",
    "uf": "",
    "municipio": ""
  },
  {
    "data": "20/01/2019",
    "nome": "Dia do Católico",
    "tipo": "ESTADUAL",
    "descricao": "Dia 20 de janeiro, é feriado no calendário oficial do Governo do Estado do Acre, conforme lei Nº 3137/2016. O Dia do Católico foi criado em 2016, em similaridade ao dia do Evngélico",
    "uf": "AC",
    "municipio": ""
  }
]

```

**Nota**: caso encontre qualquer dado inconsistente ou tenha alguma sugestão por favor crie uma [issue](https://github.com/joaopbini/feriados-brasil/issues) ou envie um [pull request](https://github.com/joaopbini/feriados-brasil/pulls) diretamente. Obrigado a todos os [colaboradores](https://github.com/joaopbini/feriados-brasil/graphs/contributors). 🙌
