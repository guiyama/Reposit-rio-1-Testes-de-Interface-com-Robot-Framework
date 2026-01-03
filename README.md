# Reposit-rio-1-Testes-de-Interface-com-Robot-Framework

# Testes Automatizados de Interface – Robot Framework

Este projeto contém testes automatizados de interface (UI) desenvolvidos com **Robot Framework** e **SeleniumLibrary**, utilizando o site **SauceDemo** como sistema em teste.

O objetivo é demonstrar como executar testes automatizados de interface localmente utilizando Robot Framework.

---

## Escopo dos Testes

Os testes automatizados contemplam os seguintes cenários:

- Login com credenciais válidas
- Validação de acesso à página de produtos
- Navegação básica no sistema

---

## Tecnologias Utilizadas

- Python 3  
- Robot Framework  
- SeleniumLibrary  
- Google Chrome  

---

## Pré-requisitos

Antes de executar os testes, verifique se você possui:

- Python **3.9 ou superior** instalado
- Google Chrome instalado no sistema

Para verificar a versão do Python:

```bash
python --version
Preparação do Ambiente
Criar ambiente virtual (opcional, mas recomendado)
Windows
bash
Copiar código
python -m venv venv
venv\Scripts\activate
macOS / Linux
bash
Copiar código
python3 -m venv venv
source venv/bin/activate
Instalar as dependências
No diretório do projeto, execute:

bash
Copiar código
pip install -r requirements.txt
Executando os Testes
Para executar todos os testes automatizados, utilize o comando:

bash
Copiar código
robot tests
Relatórios de Execução
Após a execução, o Robot Framework gera automaticamente os seguintes arquivos:

text
Copiar código
results/
 ├── log.html
 ├── report.html
 └── output.xml
Abra o arquivo report.html em um navegador para visualizar o resultado da execução.
