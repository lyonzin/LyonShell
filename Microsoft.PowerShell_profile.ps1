﻿Set-Alias pip2 "C:\Python27\Scripts\pip.exe"

# Função para exibir o banner estilizado
function Show-Banner {
    # Banner em azul e ciano
    Write-Host "            ██╗  ██╗   ██╗ ██████╗ ███╗   ██╗" -ForegroundColor Blue
    Write-Host "            ██║  ╚██╗ ██╔╝██╔═══██╗████╗  ██║" -ForegroundColor Blue
    Write-Host "            ██║   ╚████╔╝ ██║   ██║██╔██╗ ██║" -ForegroundColor Blue
    Write-Host "            ██║    ╚██╔╝  ██║   ██║██║╚██╗██║" -ForegroundColor Blue
    Write-Host "            ███████╗██║   ╚██████╔╝██║ ╚████║██╗" -ForegroundColor Blue
    Write-Host "            ╚══════╝╚═╝    ╚═════╝ ╚═╝  ╚═══╝╚═╝" -ForegroundColor Blue
    Write-Host ""
    Write-Host " ██╗  ██╗ █████╗ ██████╗ ██████╗ ██╗    ██╗ █████╗ ██╗   ██╗" -ForegroundColor Blue
    Write-Host " ██║  ██║██╔══██╗██╔══██╗██╔══██╗██║    ██║██╔══██╗╚██╗ ██╔╝" -ForegroundColor Blue
    Write-Host " ███████║███████║██████╔╝██║  ██║██║ █╗ ██║███████║ ╚████╔╝" -ForegroundColor Blue
    Write-Host " ██╔══██║██╔══██║██╔══██╗██║  ██║██║███╗██║██╔══██║  ╚██╔╝" -ForegroundColor Blue
    Write-Host " ██║  ██║██║  ██║██║  ██║██████╔╝╚███╔███╔╝██║  ██║   ██║" -ForegroundColor Blue
    Write-Host " ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝" -ForegroundColor Blue
}

#==============================================================#
#                       Show-Menu                              #
#==============================================================#
function Show-Menu {
    # Borda superior
    Write-Host -ForegroundColor Blue "╔═════════════════════════════════════════════════════════════════════╗"
    Write-Host -ForegroundColor Blue "║                          MENU DE FUNÇÕES                            ║"
    Write-Host -ForegroundColor Blue "╠═════════════════════════════════════════════════════════════════════╣"

    # Conteúdo do menu com borda direita azul
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] extrair        │ " ; Write-Host -NoNewline "Extrair arquivos compactados (zip, rar, 7z)  " -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] install/remove │ " ; Write-Host -NoNewline "Gerenciamento de pacotes com Winget           " -ForegroundColor White ; Write-Host  " ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] findstring     │ " ; Write-Host -NoNewline "Buscar string em arquivos                    " -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] encode_base64  │ " ; Write-Host -NoNewline "Codificar strings em Base64                  " -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] decode_base64  │ " ; Write-Host -NoNewline "Decodificar strings em Base64                " -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] qrcode         │ " ; Write-Host -NoNewline "Gerar QR Code a partir de uma string         " -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] macfinder      │ " ; Write-Host -NoNewline "Identificar fabricante de MAC Address        " -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] auto_startup   │ " ; Write-Host -NoNewline "Habilitar serviço para iniciar automaticamente" -ForegroundColor White ; Write-Host  " ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] check_hash     │ " ; Write-Host -NoNewline "Verificar tipo de hash e consultar VirusTotal" -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] ffind          │ " ; Write-Host -NoNewline "Encontrar arquivos rapidamente               " -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] jsonview       │ " ; Write-Host -NoNewline "Visualizar JSON formatado                    " -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] myip           │ " ; Write-Host -NoNewline "Mostrar IP público e ISP                     " -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ [+] updatefull     │ " ; Write-Host -NoNewline "Atualizar todos os pacotes instalados        " -ForegroundColor White ; Write-Host   "  ║" -ForegroundColor Blue
    # Assinatura e versão
    Write-Host -ForegroundColor Blue "╠═════════════════════════════════════════════════════════════════════╣"
    Write-Host -ForegroundColor Blue "║                           𝓥𝓮𝓻𝓼ã𝓸: 1.0                               ║"
    Write-Host -ForegroundColor Blue "║                            𝓑𝔂: 𝓛𝔂𝓸𝓷.                                ║"
    Write-Host -ForegroundColor Blue "╚═════════════════════════════════════════════════════════════════════╝"
    Write-Host -ForegroundColor Blue ""
}

# Exibir o banner automaticamente ao iniciar o PowerShell
Show-Banner

# Exibir o menu automaticamente ao iniciar o PowerShell
Show-Menu

# Criar alias para chamar o banner facilmente
Set-Alias banner Show-Banner

# Forçar a codificação UTF-16 LE
[Console]::OutputEncoding = [System.Text.Encoding]::Unicode

# Função para obter o endereço IP local
function Get-LocalIPAddress {
    try {
        $ipAddress = (Get-NetIPAddress | Where-Object {
            $_.AddressFamily -eq 'IPv4' -and $_.InterfaceAlias -notlike '*Loopback*'
        }).IPAddress

        if (-not $ipAddress) {
            return 'N/A'
        }

        return $ipAddress[0]
    }
    catch {
        return 'N/A'
    }
}

# Função para montar o prompt estilizado
function prompt {
    $userName = "Lyon"
    $hostName = $env:COMPUTERNAME
    $time = (Get-Date).ToString("HH:mm:ss")
    $ipAddress = Get-LocalIPAddress
    $currentDir = (Get-Location).Path

    # Substituir o caminho completo por '~' se estiver na pasta do usuário
    if ($currentDir -like "*$env:USERPROFILE*") {
        $currentDir = "~" + $currentDir.Substring($env:USERPROFILE.Length)
    }

    # Construir a parte superior do prompt com cores
    Write-Host -NoNewline "┌──[" -ForegroundColor Blue
    Write-Host -NoNewline "$userName" -ForegroundColor White
    Write-Host -NoNewline "@" -ForegroundColor Blue
    Write-Host -NoNewline "$hostName" -ForegroundColor White
    Write-Host -NoNewline "]-[" -ForegroundColor Blue
    Write-Host -NoNewline "$time" -ForegroundColor White
    Write-Host -NoNewline "]-[" -ForegroundColor Blue
    Write-Host -NoNewline "$ipAddress" -ForegroundColor White
    Write-Host -NoNewline "]-[" -ForegroundColor Blue
    Write-Host -NoNewline "$currentDir" -ForegroundColor Yellow
    Write-Host "]" -ForegroundColor Blue

    # Exibir a última linha com cor azul usando Write-Host e retornar uma string vazia
    Write-Host "└──PS>" -ForegroundColor Blue -NoNewline

    return " "
}

#==============================
#    Automações e Atalhos     #
#==============================

# Remover aliases existentes para evitar conflitos
Remove-Item -Path Alias:ls -ErrorAction SilentlyContinue
Remove-Item -Path Alias:dir -ErrorAction SilentlyContinue
Remove-Item -Path Alias:grep -ErrorAction SilentlyContinue
Remove-Item -Path Alias:fgrep -ErrorAction SilentlyContinue
Remove-Item -Path Alias:egrep -ErrorAction SilentlyContinue

# Definir aliases para 'ls', 'dir', e 'grep'
Set-Alias ls Get-ChildItem -Option AllScope
Set-Alias dir Get-ChildItem -Option AllScope
Set-Alias grep Select-String -Option AllScope

# Função para exibir diferenças coloridas (substituto para 'colordiff')
function diff {
    param (
        [string]$File1,
        [string]$File2
    )

    if (-not (Test-Path $File1) -or -not (Test-Path $File2)) {
        Write-Host "Arquivo(s) não encontrado(s)." -ForegroundColor Red
        return
    }

    Compare-Object (Get-Content $File1) (Get-Content $File2) | ForEach-Object {
        if ($_.SideIndicator -eq "=>") {
            Write-Host "Adicionado: $($_.InputObject)" -ForegroundColor Green
        }
        elseif ($_.SideIndicator -eq "<=") {
            Write-Host "Removido: $($_.InputObject)" -ForegroundColor Red
        }
    }
}

# Alias para 'fgrep' e 'egrep', usando 'Select-String'
Set-Alias fgrep Select-String -Option AllScope
Set-Alias egrep Select-String -Option AllScope


#===============================
# Função para Extrair Arquivos (Global)
#===============================

function global:extrair {
    param (
        [string]$filePath
    )

    # Verificar se o arquivo foi passado como argumento
    if (-not $filePath) {
        Write-Host "Uso: extrair <caminho_do_arquivo>" -ForegroundColor Yellow
        return
    }

    # Verificar se o arquivo existe
    if (-not (Test-Path -Path $filePath)) {
        Write-Host "Arquivo não encontrado: $filePath" -ForegroundColor Red
        return
    }

    # Verificar se o 7-Zip está instalado
    $sevenZipPath = "C:\Program Files\7-Zip\7z.exe"
    if (-not (Test-Path $sevenZipPath)) {
        $sevenZipPath = "C:\Program Files (x86)\7-Zip\7z.exe"
    }

    # Mensagem de erro se o 7-Zip não for encontrado
    if (-not (Test-Path $sevenZipPath) -and $filePath -match "\.7z$") {
        Write-Host "Erro: 7-Zip não encontrado. Instale o 7-Zip para descompactar arquivos .7z" -ForegroundColor Red
        return
    }

    # Determinar a extensão e descompactar com o programa apropriado
    switch -Regex ($filePath) {
        "\.tar\.bz2$" { & tar.exe -xjf $filePath }
        "\.tar\.gz$"  { & tar.exe -xzf $filePath }
        "\.bz2$"      { & "C:\Program Files\WinRAR\Rar.exe" x $filePath }
        "\.rar$"      { & "C:\Program Files\WinRAR\Rar.exe" x $filePath }
        "\.gz$"       { & tar.exe -xzf $filePath }
        "\.tar$"      { & tar.exe -xf $filePath }
        "\.tbz2$"     { & tar.exe -xjf $filePath }
        "\.tgz$"      { & tar.exe -xzf $filePath }
        "\.zip$"      { Expand-Archive -Path $filePath -DestinationPath (Get-Location) -Force }
        "\.7z$"       { & $sevenZipPath x $filePath }
        "\.Z$"        { Write-Host "Formato .Z não suportado no Windows." -ForegroundColor Red }
        default       { Write-Host "Tipo de arquivo desconhecido ou não suportado." -ForegroundColor Yellow }
    }
}

# Criar alias global para chamar a função facilmente
Set-Alias -Name extrair -Value global:extrair -Option AllScope

#===============================
# Função Global 'touch'
#===============================

function global:touch {
    param (
        [string]$fileName
    )

    # Verificar se o nome do arquivo foi passado
    if (-not $fileName) {
        Write-Host "Uso: touch <nome_do_arquivo.extensão>" -ForegroundColor Yellow
        return
    }

    # Criar o arquivo vazio
    try {
        New-Item -Path $fileName -ItemType File -Force
        Write-Host "Arquivo criado: $fileName" -ForegroundColor Green
    }
    catch {
        Write-Host "Erro ao criar o arquivo: $_" -ForegroundColor Red
    }
}
# Criar alias global para a função 'touch'
Set-Alias -Name touch -Value global:touch -Option AllScope

#===============================
# Função Global 'package'
#===============================

function global:package {
    param (
        [string]$action,
        [string]$packageName
    )

    # Verificar se a ação e o nome do pacote foram passados
    if (-not $action -or -not $packageName) {
        Write-Host "Uso: package <install|remove> <nome_do_pacote>" -ForegroundColor Yellow
        return
    }

    # Verificar qual gerenciador de pacotes está disponível
    if (Get-Command winget -ErrorAction SilentlyContinue) {
        if ($action -ieq "install") {
            Write-Host "Usando Winget para instalar o pacote: $packageName" -ForegroundColor Cyan
            winget install $packageName -e --accept-source-agreements
        }
        elseif ($action -ieq "remove") {
            Write-Host "Usando Winget para remover o pacote: $packageName" -ForegroundColor Cyan
            winget uninstall $packageName -e
        }
        else {
            Write-Host "Ação desconhecida: $action. Use 'install' ou 'remove'." -ForegroundColor Red
        }
    }
    elseif (Get-Command choco -ErrorAction SilentlyContinue) {
        if ($action -ieq "install") {
            Write-Host "Usando Chocolatey para instalar o pacote: $packageName" -ForegroundColor Cyan
            choco install $packageName -y
        }
        elseif ($action -ieq "remove") {
            Write-Host "Usando Chocolatey para remover o pacote: $packageName" -ForegroundColor Cyan
            choco uninstall $packageName -y
        }
        else {
            Write-Host "Ação desconhecida: $action. Use 'install' ou 'remove'." -ForegroundColor Red
        }
    }
    else {
        Write-Host "Gerenciador de pacotes não detectado. Você deve $action manualmente: $packageName" -ForegroundColor Red
    }
}

# Função global para instalar pacotes
function global:install {
    param ([string]$packageName)
    package "install" $packageName
}

# Função global para remover pacotes
function global:remove {
    param ([string]$packageName)
    package "remove" $packageName
}

#===============================
# Função Global 'findstring'
#===============================

function global:findstring {
    param (
        [string]$searchString,
        [string]$directory = "."
    )

    # Verificar se a string de busca foi passada
    if (-not $searchString) {
        Write-Host "Uso: findstring <search_string> [directory]" -ForegroundColor Yellow
        return
    }

    # Verificar se o diretório existe
    if (-not (Test-Path -Path $directory)) {
        Write-Host "Diretório não encontrado: $directory" -ForegroundColor Red
        return
    }

    # Procurar a string no diretório especificado
    try {
        Get-ChildItem -Recurse -Path $directory -File | Select-String -Pattern $searchString | ForEach-Object {
            Write-Host "Encontrado em: $($_.Path):$($_.LineNumber)" -ForegroundColor Cyan
            Write-Host "Linha: $($_.Line)" -ForegroundColor White
        }
    }
    catch {
        Write-Host "Erro ao procurar a string: $_" -ForegroundColor Red
    }
}

# Criar alias global para a função 'findstring'
Set-Alias -Name findstring -Value global:findstring -Option AllScope

#===============================
# Funções Globais para Base64 com Seleção de Charset
#===============================

# Função Global 'encode_base64'
function global:encode_base64 {
    param (
        [string]$inputString
    )

    # Verificar se a string foi passada
    if (-not $inputString) {
        Write-Host "Uso: encode_base64 <input_string>" -ForegroundColor Yellow
        return
    }

    # Opções de charset
    Write-Host "Escolha o charset para codificação:"
    Write-Host "1) UTF-8"
    Write-Host "2) UTF-16 LE"
    $choice = Read-Host "Digite o número da opção"

    switch ($choice) {
        "1" { $encoding = [System.Text.Encoding]::UTF8 }
        "2" { $encoding = [System.Text.Encoding]::Unicode }
        default {
            Write-Host "Opção inválida. Usando UTF-8 por padrão." -ForegroundColor Yellow
            $encoding = [System.Text.Encoding]::UTF8
        }
    }

    # Codificar a string para Base64
    try {
        $bytes = $encoding.GetBytes($inputString)
        $encodedString = [Convert]::ToBase64String($bytes)
        Write-Host "String codificada em Base64: $encodedString" -ForegroundColor Green
    }
    catch {
        Write-Host "Erro ao codificar a string: $_" -ForegroundColor Red
    }
}

# Função Global 'decode_base64'
function global:decode_base64 {
    param (
        [string]$base64String
    )

    # Verificar se a string Base64 foi passada
    if (-not $base64String) {
        Write-Host "Uso: decode_base64 <base64_string>" -ForegroundColor Yellow
        return
    }

    # Opções de charset
    Write-Host "Escolha o charset para decodificação:"
    Write-Host "1) UTF-8"
    Write-Host "2) UTF-16 LE"
    $choice = Read-Host "Digite o número da opção"

    switch ($choice) {
        "1" { $encoding = [System.Text.Encoding]::UTF8 }
        "2" { $encoding = [System.Text.Encoding]::Unicode }
        default {
            Write-Host "Opção inválida. Usando UTF-8 por padrão." -ForegroundColor Yellow
            $encoding = [System.Text.Encoding]::UTF8
        }
    }

    # Decodificar a string Base64
    try {
        $bytes = [Convert]::FromBase64String($base64String)
        $decodedString = $encoding.GetString($bytes)
        Write-Host "String decodificada: $decodedString" -ForegroundColor Green
    }
    catch {
        Write-Host "Erro ao decodificar a string: $_" -ForegroundColor Red
    }
}

# Criar aliases globais para as funções
Set-Alias -Name encode_base64 -Value global:encode_base64 -Option AllScope
Set-Alias -Name decode_base64 -Value global:decode_base64 -Option AllScope

#===============================
# Função Global 'qr'
#===============================

function global:qrcode {
    param (
        [string]$data
    )

    # Verificar se a string de dados foi fornecida
    if (-not $data) {
        Write-Host "Uso: qr <dados_para_o_qrcode>" -ForegroundColor Yellow
        return
    }

    # Criar o URL da API para gerar o QR Code
    $qrApiUrl = "http://api.qrserver.com/v1/create-qr-code/?data=$($data)"

    # Exibir as opções para o usuário
    Write-Host "`nEscolha uma opção:" -ForegroundColor Cyan
    Write-Host "1) Exibir no navegador" -ForegroundColor Cyan
    Write-Host "2) Salvar como arquivo (digite o caminho)" -ForegroundColor Cyan

    $choice = Read-Host "Digite o número da opção desejada"

    if ($choice -eq "1") {
        # Exibir o QR Code no navegador
        Write-Host "`nAbrindo o QR Code no navegador..." -ForegroundColor Green
        Start-Process $qrApiUrl
    }
    elseif ($choice -eq "2") {
        # Caminho padrão para salvar o QR Code no Desktop do usuário
        $desktopPath = [System.Environment]::GetFolderPath('Desktop')
        $filePath = Read-Host "Digite o nome do arquivo para salvar (ex: QRCode.png) [padrão: Desktop\QRCode.png]"

        # Se o usuário não fornecer um nome de arquivo, usamos o caminho padrão
        if (-not $filePath) {
            $filePath = "$desktopPath\QRCode.png"
        } else {
            $filePath = "$desktopPath\$filePath"
        }

        # Validar se o caminho é válido
        if ($filePath -and $filePath.Trim() -ne "") {
            Invoke-WebRequest -Uri $qrApiUrl -OutFile $filePath
            Write-Host "`nQR Code salvo em: $filePath" -ForegroundColor Green
        } else {
            Write-Host "`nCaminho inválido fornecido. Operação cancelada." -ForegroundColor Red
        }
    }
    else {
        Write-Host "`nOpção inválida. Tente novamente." -ForegroundColor Red
    }
}

# Criar alias global para a função 'qr'
Set-Alias -Name qr -Value global:qr -Option AllScope

#===============================
# Função Global 'macfinder'
#===============================

function global:macfinder {
    param (
        [string]$macAddress
    )

    # Verificar se o endereço MAC foi passado
    if (-not $macAddress) {
        Write-Host "Uso: macfinder <endereco_mac>" -ForegroundColor Yellow
        return
    }

    # Validar o formato do MAC Address
    if ($macAddress -notmatch "^[A-Fa-f0-9]{2}([:-][A-Fa-f0-9]{2}){5}$") {
        Write-Host "Formato de endereço MAC inválido. Exemplo válido: 00:14:22:01:23:45" -ForegroundColor Red
        return
    }

    # Consultar a API de fornecedores de MAC Address
    $url = "https://api.macvendors.com/$macAddress"
    
    try {
        $response = Invoke-RestMethod -Uri $url -Method Get
        Write-Host "`nFabricante do endereço MAC: $response" -ForegroundColor Green
    }
    catch {
        Write-Host "Erro ao consultar a API: $_" -ForegroundColor Red
    }
}

# Criar alias global para a função 'macfinder'
Set-Alias -Name macfinder -Value global:macfinder -Option AllScope

#===============================
# Função Global 'auto_startup'
#===============================

function global:auto_startup {
    param (
        [string]$service
    )

    # Verificar se o nome do serviço foi fornecido
    if (-not $service) {
        Write-Host "Uso: auto_startup <serviço>" -ForegroundColor Yellow
        return
    }

    # Verificar se o script está sendo executado com privilégios de administrador
    $currentIdentity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
    $currentPrincipal = New-Object System.Security.Principal.WindowsPrincipal($currentIdentity)
    if (-not $currentPrincipal.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)) {
        Write-Host "Esta função requer privilégios de administrador. Por favor, execute como administrador." -ForegroundColor Red
        return
    }

    # Habilitar o serviço para iniciar automaticamente
    try {
        Set-Service -Name $service -StartupType Automatic
        Start-Service -Name $service
        Write-Host "O serviço '$service' foi habilitado e iniciado." -ForegroundColor Green
    }
    catch {
        Write-Host "Erro ao habilitar ou iniciar o serviço: $_" -ForegroundColor Red
    }
}

# Criar alias global para a função 'auto_startup'
Set-Alias -Name auto_startup -Value global:auto_startup -Option AllScope

#===============================
# Função Global 'check_hash'
#===============================

function global:check_hash {
    param (
        [string]$hash
    )

    # Verificar se o hash foi fornecido
    if (-not $hash) {
        Write-Host "Uso: check_hash <hash>" -ForegroundColor Yellow
        return
    }

    # Remover espaços em branco e garantir que o hash esteja em maiúsculas
    $hash = $hash.Trim().ToUpper()

    # Variáveis de probabilidade
    $probabilidade = 0
    $tipoHash = ""

    # Verificar se o hash contém apenas caracteres válidos (0-9, A-F)
    if ($hash -notmatch "^[A-F0-9]+$" -and $hash -notmatch "^[A-Za-z0-9+/=]+$") {
        Write-Host "Hash inválido. O hash deve conter apenas caracteres hexadecimais (0-9, A-F) ou caracteres Base64." -ForegroundColor Red
        return
    }

    # Verificar o comprimento e tentar identificar o tipo de hash
    $hashLength = $hash.Length
    switch ($hashLength) {
        32 {
            $tipoHash = "MD5"
            $probabilidade = 100
            Write-Host "Este é um hash MD5." -ForegroundColor Green
            break
        }
        40 {
            $tipoHash = "SHA-1"
            $probabilidade = 100
            Write-Host "Este é um hash SHA-1." -ForegroundColor Green
            break
        }
        64 {
            $tipoHash = "SHA-256"
            $probabilidade = 100
            Write-Host "Este é um hash SHA-256." -ForegroundColor Green
            break
        }
        128 {
            $tipoHash = "SHA-512"
            $probabilidade = 100
            Write-Host "Este é um hash SHA-512." -ForegroundColor Green
            break
        }
        default {
            Write-Host "Tipo de hash desconhecido ou não reconhecido. Tentando identificar online..." -ForegroundColor Yellow
            $probabilidade = 50
            break
        }
    }

    # Verificar se é um hash Base64 (tamanho específico e conteúdo, aceitando hashes sem padding)
    if ($tipoHash -eq "" -and $hash.Length % 4 -eq 0 -and $hash -match "^[A-Za-z0-9+/=]+$") {
        Write-Host "Este hash parece ser um hash Base64." -ForegroundColor Green
        $probabilidade = 80
    }

    # Exibir a probabilidade de certeza
    Write-Host "[+] Probabilidade de certeza: $probabilidade%" -ForegroundColor Cyan

    # Perguntar ao usuário se deseja verificar o hash no VirusTotal
    $response = Read-Host "Deseja verificar este hash no VirusTotal? [N/y]"

    if ($response -eq "") {
        Write-Host "Consulta ao VirusTotal foi ignorada." -ForegroundColor Yellow
    }
    else {
        Write-Host "Verificando no VirusTotal..." -ForegroundColor Yellow
        Get-HashInfoFromVirusTotal $hash
    }
}

function global:Get-HashInfoFromVirusTotal {
    param (
        [string]$hash
    )

    $apiKey = "COLOQUE_AQUI_SUA_API_KEY_DO_VIRUS_TOTAL"
    $url = "https://www.virustotal.com/api/v3/files/$hash"

    try {
        $headers = @{ "x-apikey" = $apiKey }
        $response = Invoke-RestMethod -Uri $url -Headers $headers -Method Get

        if ($response.data) {
            Write-Host "`n[+] Informações do VirusTotal para o hash $($hash):" -ForegroundColor Cyan
            Write-Host "--------------------------------------------------------" -ForegroundColor Cyan

            # Nome do arquivo
            Write-Host "`n[+] Nome do arquivo:" -ForegroundColor Green
            Write-Host "--------------------------------------------------------" -ForegroundColor Green
            $fileName = $response.data.attributes.meaningful_name
            if ($fileName) {
                Write-Host "    $fileName" -ForegroundColor White
            } else {
                Write-Host "    Não disponível" -ForegroundColor Yellow
            }

            # Nomes alternativos
            Write-Host "`n[+] Nomes alternativos:" -ForegroundColor Cyan
            Write-Host "--------------------------------------------------------" -ForegroundColor Cyan
            $alternateNames = $response.data.attributes.names
            if ($alternateNames) {
                $alternateNames | ForEach-Object {
                    Write-Host "    $_" -ForegroundColor White
                }
            } else {
                Write-Host "    Não disponível" -ForegroundColor Yellow
            }

            # Status do arquivo
            Write-Host "`n[+] Status do arquivo:" -ForegroundColor Yellow
            Write-Host "--------------------------------------------------------" -ForegroundColor Yellow
            $status = $response.data.attributes.last_analysis_stats
            $totalAnalysis = $status.malicious + $status.suspicious + $status.undetected + $status.harmless + $status.timeout + $status.failure + $status.'type-unsupported'

            $maliciousPercentage = if ($totalAnalysis -gt 0) { [math]::Round(($status.malicious / $totalAnalysis) * 100, 2) } else { 0 }
            $undetectedPercentage = if ($totalAnalysis -gt 0) { [math]::Round(($status.undetected / $totalAnalysis) * 100, 2) } else { 0 }

            Write-Host "    Malicioso: $($status.malicious) ($maliciousPercentage%)" -ForegroundColor Red
            Write-Host "    Suspeito: $($status.suspicious)" -ForegroundColor DarkYellow
            Write-Host "    Não Detectado: $($status.undetected) ($undetectedPercentage%)" -ForegroundColor Yellow
            Write-Host "    Inocente: $($status.harmless)" -ForegroundColor DarkGreen
            Write-Host "    Timeout: $($status.timeout)" -ForegroundColor Gray
            Write-Host "    Falha: $($status.failure)" -ForegroundColor DarkRed
            Write-Host "    Tipo não suportado: $($status.'type-unsupported')" -ForegroundColor DarkGray

            # Link para o resultado
            Write-Host "`n[+] Link para o resultado:" -ForegroundColor Yellow
            Write-Host "--------------------------------------------------------" -ForegroundColor Yellow
            Write-Host "    https://www.virustotal.com/gui/file/$hash" -ForegroundColor Blue
        } else {
            Write-Host "Nenhuma informação encontrada para este hash no VirusTotal." -ForegroundColor Red
        }
    }
    catch {
        Write-Host "Erro ao consultar a API do VirusTotal: $_" -ForegroundColor Red
    }
}

#==============================================================#
#        Encontrar rapidamente arquivos por nome               #
#==============================================================#

function global:ffind {
    param (
        [string]$fileName,
        [int]$maxResults = 100
    )

    #===============================
    # Verificar se o nome do arquivo foi passado
    #===============================
    if (-not $fileName) {
        Write-Host "Uso: ffind <nome_do_arquivo> [limite_de_resultados]" -ForegroundColor Yellow
        return
    }

    #===============================
    # Caminhos a serem excluídos
    #===============================
    $excludePaths = @('C:\Windows', "$env:USERPROFILE\OneDrive")
    $userDirectory = "$env:USERPROFILE"

    Write-Host "`nBuscando por arquivos contendo: *$fileName*" -ForegroundColor Cyan
    Write-Host "Excluindo diretórios: C:\Windows e OneDrive" -ForegroundColor Yellow

    #===============================
    # Medir o tempo de execução
    #===============================
    $startTime = Get-Date
    $count = 0
    $progress = 0
    $filesFound = @()
    $totalFiles = (Get-ChildItem -Path $userDirectory -Recurse -File -ErrorAction SilentlyContinue).Count

    #===============================
    # Buscar arquivos com barra de progresso
    #===============================
    try {
        Get-ChildItem -Path $userDirectory -Recurse -File -ErrorAction SilentlyContinue | ForEach-Object {
            # Incrementar progresso
            $progress++
            $percentComplete = [math]::Min(([math]::Round(($progress / $totalFiles) * 100)), 100)

            # Atualizar a barra de progresso
            Write-Progress -Activity "Procurando arquivos..." -Status "Verificado $progress arquivos" -PercentComplete $percentComplete

            # Ignorar arquivos dentro dos diretórios excluídos
            if ($_.FullName -match 'C:\\Windows|OneDrive') {
                return
            }

            # Verificar se o nome do arquivo corresponde à busca
            if ($_.Name -like "*$fileName*") {
                $filesFound += $_
                $count++
                Write-Host "[+] Encontrado: $($_.FullName)" -ForegroundColor Green

                # Parar se atingir o limite de resultados
                if ($count -ge $maxResults) {
                    Write-Host "`nLimite de $maxResults resultados atingido." -ForegroundColor Yellow
                    return
                }
            }
        }

        #===============================
        # Exibir resultados finais
        #===============================
        if ($filesFound.Count -eq 0) {
            Write-Host "Nenhum arquivo encontrado." -ForegroundColor Red
        }
        else {
            $endTime = Get-Date
            $duration = ($endTime - $startTime).TotalSeconds
            Write-Host "`n[+] Total de arquivos encontrados: $count" -ForegroundColor Cyan
            Write-Host "[+] Tempo de execução: $duration segundos" -ForegroundColor Cyan
        }
    }
    catch {
        Write-Host "Erro ao buscar arquivos: $_" -ForegroundColor Red
    }
}

#==============================================================#
#               Alias para a função 'ffind'                    #
#==============================================================#

# Criar alias global para chamar a função facilmente
Set-Alias -Name ffind -Value global:ffind -Option AllScope

#==============================================================#
#     Visualizar rapidamente um arquivo JSON formatado         #
#==============================================================#

function global:jsonview {
    param (
        [string]$filePath
    )

    # Verificar se o arquivo foi passado como argumento
    if (-not $filePath) {
        Write-Host "Uso: jsonview <caminho_do_arquivo>" -ForegroundColor Yellow
        return
    }

    # Verificar se o arquivo existe
    if (-not (Test-Path -Path $filePath)) {
        Write-Host "Arquivo não encontrado: $filePath" -ForegroundColor Red
        return
    }

    try {
        # Ler e converter o JSON
        $jsonContent = Get-Content -Path $filePath -Raw | ConvertFrom-Json

        # Exibir JSON formatado com identação
        $jsonContent | ConvertTo-Json -Depth 10 | Out-Host
    }
    catch {
        Write-Host "Erro ao processar o arquivo JSON: $_" -ForegroundColor Red
    }
}

# Criar alias global para a função 'jsonview'
Set-Alias -Name jsonview -Value global:jsonview -Option AllScope

#==============================================================#
#                 Descobrir Meu IP Público                     #
#==============================================================#

function global:myip {
    try {
        # Consultar o IP público
        $publicIp = Invoke-RestMethod -Uri "https://ifconfig.me"

        # Consultar informações do IP usando a API do ipinfo.io
        $ipInfo = Invoke-RestMethod -Uri "https://ipinfo.io/$publicIp/json"

        # Obter o nome do provedor (ISP)
        $isp = $ipInfo.org -replace "^AS\d+\s", ""  # Remover o prefixo "ASXXXXX" se presente

        # Exibir o resultado
        Write-Host -NoNewline -ForegroundColor Green "[+] Seu IP Público é: "
        Write-Host -NoNewline -ForegroundColor White "$publicIp"
        Write-Host -ForegroundColor Yellow " ($isp)"
    }
    catch {
        Write-Host "Erro ao consultar o IP público ou informações do provedor. Verifique sua conexão com a internet." -ForegroundColor Red
    }
}

# Criar alias global para a função 'myip'
Set-Alias -Name myip -Value global:myip -Option AllScope

#==============================================================#
#         Atualizar Pacotes no Windows com Winget              #
#==============================================================#

function global:updatefull {
    Write-Host "Iniciando atualização completa do sistema..." -ForegroundColor Cyan

    # Atualizar a lista de pacotes
    Write-Host "[+] Atualizando a lista de pacotes disponíveis..." -ForegroundColor Green
    winget upgrade --accept-source-agreements --accept-package-agreements

    # Atualizar todos os pacotes instalados
    Write-Host "[+] Atualizando todos os pacotes instalados..." -ForegroundColor Green
    try {
        $upgradeResult = winget upgrade --all --include-unknown --accept-source-agreements --accept-package-agreements
        if ($upgradeResult -match "Nenhum pacote instalado foi encontrado") {
            Write-Host "[+] Todos os pacotes já estão atualizados." -ForegroundColor Yellow
        }
    }
    catch {
        Write-Host "[!] Erro durante a atualização dos pacotes: $_" -ForegroundColor Red
    }

    # Executar a limpeza automática de pacotes obsoletos (remoção automática)
    Write-Host "[+] Limpando pacotes obsoletos e realizando autoremove..." -ForegroundColor Green
    winget list --source winget | ForEach-Object {
        $packageName = $_.split()[0]
        if ($packageName -ne "") {
            try {
                winget uninstall $packageName --silent --accept-source-agreements
            }
            catch {
                Write-Host "Não foi possível limpar: $packageName" -ForegroundColor Red
            }
        }
    }

    Write-Host "[+] Atualização completa concluída!" -ForegroundColor Cyan
}





