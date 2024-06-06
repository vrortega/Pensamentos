<div align="center"><h1>Pensamentos 💭</h1></div>

# 📝 Introdução
Este aplicativo exibe citações inspiradoras e motivacionais para os usuários. Ele permite personalizar a frequência das citações e o esquema de cores da interface.

# 📚 Funcionalidades
- Exibição de citações inspiradoras
- Personalização da frequência de atualização das citações
- Alternância entre diferentes esquemas de cores
- Salvamento de preferências usando UserDefaults

# 🗂 Estrutura do Projeto
### 📁 Models
- Quote: Estrutura que representa uma citação.
- QuotesManager: Classe que carrega e gerencia as citações de um arquivo JSON.
- Configuration: Singleton que gerencia as configurações do aplicativo usando UserDefaults.

### 📁 Controllers
- QuotesViewController: Controla a exibição das citações na tela principal.
- SettingsViewController: Permite a personalização das configurações do aplicativo.

### 📁 Views
- Contém os arquivos de interface do usuário, como Main Storyboard e LaunchScreen.

### 📁 Files
- quotes.JSON: Arquivo no formato JSON que contém uma coleção de citações.

# 📖 Tópicos Abordados
### 🗃 UserDefaults
Persistência de dados para salvar configurações do usuário, como intervalo de atualização, esquema de cores e atualização automática.

### 🛎 NotificationCenter
Sistema de mensagens usado para atualizar a interface do usuário quando as configurações mudam.

### ⚙️ Settings Bundle
Permite adicionar uma interface de configurações no aplicativo de Ajustes do iOS (não diretamente usado neste exemplo).

### 📄 JSON
Formato de troca de dados usado para armazenar e carregar citações.

# 🚀 Como Rodar o Projeto
* **Clone o Repositório:**

```sh
git clone https://github.com/vrortega/Pensamentos.git
cd Pensamentos
```
* **Abra o Projeto no Xcode:**

Navegue até o arquivo `Pensamentos.xcodeproj` e abra-o com o Xcode.

* **Instale as Dependências:**

Se o projeto utilizar CocoaPods, execute `pod install` para instalar as dependências necessárias.

* **Compile e Rode o Projeto:**

Pressione `Cmd + R` ou clique no botão de rodar no Xcode.


# 📖 Referência
Projeto desenvolvido como parte do <a href="https://www.udemy.com/course/curso-completo-de-desenvolvimento-ios11swift4" target="_blank">
curso de desenvolvimento iOS, do Desenvolvedor Eric Alves Brito</a>.
