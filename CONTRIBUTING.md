# Guia de Contribuição

Obrigado por considerar contribuir para o projeto Feriados do Brasil! 🎉

### Como reportar erros

Se você encontrou um feriado errado ou faltando:

1.  Verifique a [versão mais recente](https://github.com/joaopbini/feriados-brasil) do código.
2.  Abra uma **Issue** utilizando o template de Bug Report.
3.  **Fundamental:** Anexe um link para uma **fonte oficial** (Decreto, Lei Municipal/Estadual, Site da Prefeitura/Governo). Não aceitamos fontes como "calendario.com.br" ou notícias genéricas sem confirmação legislativa.

### Como propor alterações (Pull Requests)

1.  **Escolha o arquivo correto:**
    *   Os dados "fonte" geralmente estão nos arquivos JSON em `dados/feriados/[tipo]/json/[ano].json`.
    *   Evite editar apenas o SQL ou CSV diretamente se eles forem gerados a partir do JSON (verifique se há scripts de build). Caso não haja scripts de automação documentados, tente manter a consistência editando todos os formatos (JSON, CSV, SQL) ou mencione no PR quais arquivos você alterou.

2.  **Verifique o Código IBGE:**
    *   Para feriados municipais, o campo `codigo_ibge` é **obrigatório**.
    *   Consulte a tabela `dados/localizacao/municipios/municipios.json` para encontrar o código correto da cidade.

3.  **Padrão de Formatação:**
    *   Datas: `DD/MM/YYYY` (Ex: `25/12/2024`)
    *   Nomes: Use Title Case (Ex: `Aniversário da Cidade` em vez de `aniversário da cidade`).

### Estrutura do Pull Request

*   Dê um título claro ao PR: `Fix: Correção da data do padroeiro de Salvador`
*   Descreva o que mudou e **por quê** (novamente, cite a fonte oficial).

---

Ao participar deste projeto, você concorda em seguir nosso [Código de Conduta](CODE_OF_CONDUCT.md).

