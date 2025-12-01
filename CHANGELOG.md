# Histórico de Versões

## Versão 2.0.0 - Refatoração da Estrutura de Dados

### ⚠️ Mudanças Importantes (Breaking Changes)

Esta versão introduz mudanças significativas na estrutura dos dados que **não são compatíveis** com a versão anterior (v1.0.0).

### O que mudou?

#### Versão Antiga (v1.0.0)
- Os dados de município e estado eram armazenados como **strings** diretamente nos registros de feriados
- Não havia tabelas separadas para estados e municípios
- Difícil manter a consistência dos nomes de municípios
- Não havia relacionamento normalizado entre as entidades

**Exemplo da estrutura antiga:**
```json
{
  "id": "abc123",
  "data": "20/01/2024",
  "nome": "Dia de São Sebastião",
  "tipo": "MUNICIPAL",
  "municipio": "Rio de Janeiro",  // String
  "uf": "RJ"
}
```

#### Versão Nova (v2.0.0)
- **Estrutura relacional normalizada** com tabelas separadas para estados, municípios e feriados
- Os feriados municipais agora referenciam municípios através do `codigo_ibge` (chave estrangeira)
- Dados de municípios e estados obtidos diretamente da [API oficial do IBGE](https://servicodados.ibge.gov.br/api/docs/localidades)
- Melhor integridade e consistência dos dados
- Relacionamentos usando chaves estrangeiras (Foreign Keys)

**Exemplo da nova estrutura:**
```json
{
  "id": "abc123",
  "data": "20/01/2024",
  "nome": "Dia de São Sebastião",
  "tipo": "MUNICIPAL",
  "descricao": "São Sebastião é o padroeiro da cidade do Rio de Janeiro.",
  "uf": "RJ",
  "codigo_ibge": 3304557  // Novo: referência ao município pelo código IBGE
}
```

**Nota:** O campo `municipio` foi **removido** dos arquivos CSV e JSON. Agora use apenas `codigo_ibge` para referenciar municípios.

### Formatos de Arquivo

Todos os formatos (CSV, JSON e SQL) foram atualizados para refletir a nova estrutura:

**CSV (6 colunas):**
```csv
data,nome,tipo,descricao,uf,codigo_ibge
```

**JSON:**
```json
{
  "data": "20/01/2024",
  "nome": "Dia de São Sebastião",
  "tipo": "MUNICIPAL",
  "descricao": "...",
  "uf": "RJ",
  "codigo_ibge": 3304557
}
```

**SQL:**
```sql
INSERT INTO feriado (data, nome, tipo, descricao, uf, codigo_ibge) 
VALUES ('20/01/2024', 'Dia de São Sebastião', 'MUNICIPAL', '...', 'RJ', 3304557);
```

### Benefícios da Nova Estrutura

1. **Integridade Referencial**: Uso de chaves estrangeiras garante que todos os feriados municipais referenciem municípios válidos
2. **Dados Oficiais**: Municípios e estados vêm diretamente da API do IBGE
3. **Consistência**: Nomes e códigos padronizados eliminam inconsistências
4. **Facilidade de Consulta**: Queries SQL mais poderosas usando JOINs
5. **Escalabilidade**: Fácil adicionar novos atributos aos municípios sem alterar os feriados

### Nova Estrutura de Dados

A versão 2.0 introduz três tabelas relacionadas:

#### 1. Tabela `estados`
```sql
CREATE TABLE estados (
    codigo_uf INTEGER NOT NULL,
    uf VARCHAR(2) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    regiao VARCHAR(12) NOT NULL
);
```

#### 2. Tabela `municipios`
```sql
CREATE TABLE municipios (
    codigo_ibge INTEGER NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    capital BOOLEAN NOT NULL,
    siafi_id VARCHAR(4) NOT NULL UNIQUE,
    ddd INTEGER NOT NULL,
    fuso_horario VARCHAR(32) NOT NULL,
    uf VARCHAR(2) REFERENCES estados(uf)
);
```

#### 3. Tabela `feriado`
```sql
CREATE TABLE feriado (
    id VARCHAR(32) PRIMARY KEY,
    data VARCHAR(10),
    nome VARCHAR(255),
    tipo VARCHAR(50),
    descricao TEXT,
    uf VARCHAR(2) REFERENCES estados(uf),
    codigo_ibge INTEGER REFERENCES municipios(codigo_ibge)
);
```

**Importante:** Nos arquivos CSV e JSON, o campo `municipio` foi **removido**. Use apenas `codigo_ibge` para referenciar municípios.

### Ordem de Importação

⚠️ **Importante**: A ordem de importação agora é crucial devido aos relacionamentos:

```sql
-- 1. PRIMEIRO: Estados (não tem dependências)
\i dados/localizacao/estados/estados.sql

-- 2. SEGUNDO: Municípios (depende de estados)
\i dados/localizacao/municipios/municipios.sql

-- 3. TERCEIRO: Feriados (depende de municípios para feriados municipais)
\i dados/feriados/nacional/sql/2024.sql
\i dados/feriados/estadual/sql/2024.sql
\i dados/feriados/municipal/sql/2024.sql
\i dados/feriados/facultativo/sql/2024.sql
```

### Como Migrar da v1.0 para v2.0

Se você está usando a versão antiga e deseja migrar:

1. **Backup seus dados atuais**
2. **Importe os dados de localização** (estados e municípios)
3. **Reimporte os feriados** usando os novos arquivos

**Não é possível migração automática** devido às mudanças estruturais significativas.

### Como Acessar a Versão Antiga (v1.0.0)

Se você precisa da versão anterior, ela está preservada e disponível:

#### Opção 1: Clonar na versão antiga
```bash
git clone --branch v1.0.0 https://github.com/joaopbini/feriados-brasil.git
```

#### Opção 2: Fazer checkout da tag (se já tem o repositório)
```bash
git checkout v1.0.0
```

#### Opção 3: Acessar diretamente no GitHub
Acesse a tag através do link: [v1.0.0](https://github.com/joaopbini/feriados-brasil/tree/v1.0.0)

#### Opção 4: Baixar o ZIP da versão antiga
No GitHub, vá em "Releases" e baixe o arquivo ZIP da versão v1.0.0

---

## Versão 1.0.0 - Versão Inicial

Primeira versão pública do repositório contendo:
- Feriados nacionais, estaduais, municipais e facultativos
- Formatos: CSV, JSON e SQL
- Anos disponíveis: 2010-2026
- Estrutura simples com dados de município como strings

---

**Nota**: Para sugestões ou relatar problemas, abra uma [issue](https://github.com/joaopbini/feriados-brasil/issues) ou envie um [pull request](https://github.com/joaopbini/feriados-brasil/pulls).

