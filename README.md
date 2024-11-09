
# PowerShell Profile - HARDWAY Custom Shell

Este repositório contém um **perfil personalizado do PowerShell** para Windows, desenvolvido e ajustado para fornecer uma experiência otimizada e estilizada para desenvolvedores e profissionais de segurança. O perfil inclui diversas **funções automáticas, atalhos úteis e um design estilizado**, perfeito para aqueles que desejam elevar sua experiência no terminal.

## ✨ Características Principais

1. **Banner Estilizado**
   - Exibe um banner customizado com o nome **HARDWAY**, ao iniciar o PowerShell.
   - Feito com arte ASCII para uma apresentação única e visualmente agradável.

2. **Alias e Atalhos Globais**
   - Alias úteis para comandos comuns como `ls`, `grep`, `install/remove`, e muito mais.
   - Facilita a navegação e execução de comandos frequentes.

3. **Funções para Gerenciamento de Arquivos**
   - **extrair**: Permite descompactar diversos tipos de arquivos como `.zip`, `.rar`, `.7z`, e `.tar`.
   - **ffind**: Busca arquivos rapidamente pelo nome, ignorando diretórios como `C:\Windows` e `OneDrive`, com barra de progresso.

4. **Codificação e Decodificação em Base64**
   - Funções **encode_base64** e **decode_base64** com suporte a diferentes charsets (UTF-8 e UTF-16 LE).

5. **Gerenciamento de Pacotes com Winget**
   - **install/remove**: Instala ou remove pacotes utilizando o **Winget**, o gerenciador de pacotes padrão do Windows.
   - **updatefull**: Atualiza todos os pacotes instalados, incluindo limpeza e autoremove.

6. **Visualização de JSON**
   - **jsonview**: Exibe rapidamente arquivos JSON formatados e identados, facilitando a leitura e análise.

7. **Verificação de Hash e Consulta no VirusTotal**
   - **check_hash**: Detecta o tipo de hash (MD5, SHA-1, SHA-256, SHA-512) e oferece opção para verificar o hash no **VirusTotal**.

8. **Obter IP Público e ISP**
   - **myip**: Exibe o IP público e consulta o ISP utilizando a API `ipinfo.io`, proporcionando informações adicionais sobre a conexão.

9. **Gerar QR Code**
   - **qrcode**: Gera QR Code a partir de uma string e permite exibir no navegador ou salvar como imagem.

10. **Identificar Fabricante de MAC Address**
    - **macfinder**: Consulta a API `macvendors.com` para identificar o fabricante a partir de um endereço MAC.

11. **Menu de Funções Estilizado**
    - **show-menu**: Exibe um menu interativo com todas as funções disponíveis, facilitando a navegação e uso das ferramentas.

## 🛠️ Requisitos

- PowerShell 7 ou superior.
- **7-Zip** instalado para a função de extração de arquivos.
- **Winget** para gerenciamento de pacotes.
- Acesso à internet para algumas funções que utilizam APIs externas.

## 📦 Instalação

1. Clone o repositório ou faça o download do arquivo `profile.ps1`.
2. Copie o arquivo para o diretório do seu perfil PowerShell:
   ```powershell
   cp .\profile.ps1 $PROFILE
   ```
3. Reinicie o PowerShell para aplicar as mudanças.

## 📝 Uso

- Inicie o PowerShell e o banner estilizado será exibido automaticamente.
- Utilize o comando `show-menu` para ver todas as funções disponíveis.
- Exemplos de uso:
  ```powershell
  # Extrair arquivos
  extrair .arquivo.zip

  # Buscar string em arquivos
  findstring "Erro" .\logs

  # Codificar em Base64
  encode_base64 "Texto para codificar"

  # Obter IP público
  myip

  # Atualizar pacotes
  updatefull
  ```

## 📄 Licença

Este projeto está licenciado sob a licença MIT. Consulte o arquivo LICENSE para obter mais detalhes.

## 📞 Contato

Criado por **Lyon**. Sinta-se à vontade para entrar em contato para sugestões ou colaborações.
- **E-mail**: lyon@example.com
- **GitHub**: [github.com/lyon](https://github.com/lyon)

 𝓥𝓮𝓻𝓼ã𝓸: 1.0  
 𝓑𝔂: 𝓛𝔂𝓸𝓷.
