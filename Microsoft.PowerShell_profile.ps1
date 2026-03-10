# ═══════════════════════════════════════════════════════════════════════
# LYONSHELL - Configuration
# Edit these values to customize your shell experience
# ═══════════════════════════════════════════════════════════════════════
$LyonShell = @{
    Username      = $env:USERNAME                          # Display name in prompt
    WeatherCities = @("Sao+Paulo")                         # Default cities for 'weather' command
}

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
    Write-Host -ForegroundColor Blue "╔═══════════════════════════════════════════════════════════════════════╗"
    Write-Host -ForegroundColor Blue "║                          MENU DE MODULOS                              ║"
    Write-Host -ForegroundColor Blue "╠═══════════════════╤═════════════════════════════════════════════════════╣"
    Write-Host -NoNewline -ForegroundColor Blue "║ [    Modulos   ]  │ " ; Write-Host -NoNewline "              [    Descricao   ]                 " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -ForegroundColor Blue "╠═══════════════════╪═════════════════════════════════════════════════════╣"
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] extrair       " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Extrair arquivos compactados (zip, rar, 7z)     " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] install/remove" -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Gerenciamento de pacotes com Winget              " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] findstring    " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Buscar string em arquivos                        " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] encode_base64 " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Codificar strings em Base64                      " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] decode_base64 " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Decodificar strings em Base64                    " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] qrcode        " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Gerar QR Code a partir de uma string             " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] macfinder     " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Identificar fabricante de MAC Address            " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] auto_startup  " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Habilitar servico para iniciar automaticamente   " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] hashcheck     " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Verificar tipo de hash e consultar VirusTotal    " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] ffind         " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Encontrar arquivos rapidamente                   " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] jsonview      " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Visualizar JSON formatado                        " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] myip          " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Mostrar IP publico e ISP                         " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] updatefull    " -ForegroundColor Cyan ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Atualizar todos os pacotes instalados             " -ForegroundColor White ; Write-Host "║" -ForegroundColor Blue
    Write-Host -ForegroundColor Blue "╠═══════════════════╪═════════════════════════════════════════════════════╣"
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] crackhash     " -ForegroundColor Green ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Crackear hash online (MD5/SHA/NTLM)              " -ForegroundColor Green ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] ports         " -ForegroundColor Green ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Listar portas abertas/listening com processo      " -ForegroundColor Green ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] proc          " -ForegroundColor Green ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Buscar processo por nome (PID, RAM, CPU)          " -ForegroundColor Green ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] weather       " -ForegroundColor Green ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Clima atual (wttr.in)                             " -ForegroundColor Green ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] whois         " -ForegroundColor Green ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Lookup de dominio/IP (org, city, country)         " -ForegroundColor Green ; Write-Host "║" -ForegroundColor Blue
    Write-Host -NoNewline -ForegroundColor Blue "║ " ; Write-Host -NoNewline "[+] sysinfo       " -ForegroundColor Green ; Write-Host -NoNewline -ForegroundColor Blue "│ " ; Write-Host -NoNewline "Dashboard do sistema (CPU, RAM, Disk, Uptime)     " -ForegroundColor Green ; Write-Host "║" -ForegroundColor Blue
    Write-Host -ForegroundColor Blue "╠═══════════════════╧═════════════════════════════════════════════════════╣"
    Write-Host -ForegroundColor Blue "║                            Versao: 2.0 | By: Lyon.                    ║"
    Write-Host -ForegroundColor Blue "╚═══════════════════════════════════════════════════════════════════════╝"
    Write-Host ""
}

# Exibir o banner automaticamente ao iniciar o PowerShell
Show-Banner

# Exibir o menu automaticamente ao iniciar o PowerShell
#Show-Menu

# Criar alias para chamar o banner facilmente
Set-Alias banner Show-Banner

# Forçar a codificação UTF-16 LE
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Cached IP - refreshes every 60s instead of every prompt
$script:cachedIP = $null
$script:lastIPCheck = [datetime]::MinValue
function Get-LocalIPAddress {
    if (([datetime]::Now - $script:lastIPCheck).TotalSeconds -gt 60 -or $null -eq $script:cachedIP) {
        try {
            $script:cachedIP = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -match 'Ethernet|Wi-Fi' -and $_.IPAddress -notmatch '^(169\.254|127\.)' }).IPAddress | Select-Object -First 1
            if (-not $script:cachedIP) { $script:cachedIP = 'N/A' }
            $script:lastIPCheck = [datetime]::Now
        } catch { $script:cachedIP = 'N/A' }
    }
    return $script:cachedIP
}



# Função para montar o prompt estilizado
function prompt {
    $userName = $LyonShell.Username
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
# Função Global 'hashcheck'
#===============================

function global:hashcheck {
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

    $apiKey = "809bccd5f32ec2662873ef2c78bfcae53e8badada5bed0f7870186789d5039fa"
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
        $resp = Invoke-WebRequest -Uri 'https://ipinfo.io/json' -TimeoutSec 5 -UseBasicParsing
        $raw = [System.Text.Encoding]::UTF8.GetString($resp.RawContentStream.ToArray())
        $ipInfo = $raw | ConvertFrom-Json
        $isp = ($ipInfo.org -replace '^AS\d+\s*', '').Trim()
        Write-Host -NoNewline -ForegroundColor Green "[+] Seu IP Publico: "
        Write-Host -NoNewline -ForegroundColor White "$($ipInfo.ip)"
        Write-Host -ForegroundColor Yellow " ($isp)"
    }
    catch {
        Write-Host "Erro ao consultar IP publico." -ForegroundColor Red
    }
}

# Criar alias global para a função 'myip'
Set-Alias -Name myip -Value global:myip -Option AllScope

#==============================================================#
#              Hash Cracker - Online Lookup                    #
#==============================================================#

function global:crackhash {
    param (
        [string]$hash
    )

    if (-not $hash) {
        Write-Host "Uso: crackhash <hash>" -ForegroundColor Yellow
        Write-Host "     crackhash 5f4dcc3b5aa765d61d8327deb882cf99" -ForegroundColor DarkGray
        return
    }

    $hash = $hash.Trim().ToLower()
    $hashLength = $hash.Length

    # Identificar tipo
    $hashType = switch ($hashLength) {
        32  { "MD5" }
        40  { "SHA-1" }
        64  { "SHA-256" }
        96  { "SHA-384" }
        128 { "SHA-512" }
        default {
            if ($hash -match "^\$2[aby]\$") { "bcrypt" }
            elseif ($hash -match "^[a-f0-9]{32}:[a-f0-9]{32}$") { "NTLM (with salt)" }
            else { "Desconhecido ($hashLength chars)" }
        }
    }

    Write-Host ""
    Write-Host "  [*] Hash:  $hash" -ForegroundColor White
    Write-Host "  [*] Tipo:  $hashType" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "  [~] Consultando bases online..." -ForegroundColor Yellow
    Write-Host ""

    $found = $false
    $plaintext = $null

    # Base 1: nitrxgen (MD5 - sem API key)
    if ($hashLength -eq 32) {
        try {
            $r = Invoke-RestMethod -Uri "https://www.nitrxgen.net/md5db/$hash" -TimeoutSec 8 -ErrorAction Stop
            if ($r -and $r.Trim() -ne "") {
                $plaintext = $r.Trim()
                $found = $true
                Write-Host "  [+] CRACKED! (nitrxgen.net)" -ForegroundColor Green
                Write-Host "  [+] Plaintext: " -NoNewline -ForegroundColor Green
                Write-Host "$plaintext" -ForegroundColor White -BackgroundColor DarkGreen
                Write-Host ""
            } else {
                Write-Host "  [-] nitrxgen.net: nao encontrado" -ForegroundColor DarkGray
            }
        } catch {
            Write-Host "  [-] nitrxgen.net: timeout/erro" -ForegroundColor DarkGray
        }
    }

    # Base 2: hashtoolkit
    if (-not $found) {
        try {
            $r = Invoke-WebRequest -Uri "https://hashtoolkit.com/reverse-hash?hash=$hash" -TimeoutSec 10 -UseBasicParsing -ErrorAction Stop
            if ($r.Content -match '<span class="text-danger">([^<]+)</span>') {
                $plaintext = $Matches[1].Trim()
                if ($plaintext -ne "" -and $plaintext -notmatch "not found") {
                    $found = $true
                    Write-Host "  [+] CRACKED! (hashtoolkit.com)" -ForegroundColor Green
                    Write-Host "  [+] Plaintext: " -NoNewline -ForegroundColor Green
                    Write-Host "$plaintext" -ForegroundColor White -BackgroundColor DarkGreen
                    Write-Host ""
                } else {
                    Write-Host "  [-] hashtoolkit.com: nao encontrado" -ForegroundColor DarkGray
                }
            } else {
                Write-Host "  [-] hashtoolkit.com: nao encontrado" -ForegroundColor DarkGray
            }
        } catch {
            Write-Host "  [-] hashtoolkit.com: timeout/erro" -ForegroundColor DarkGray
        }
    }

    # Base 3: md5decrypt.net (MD5/SHA1/SHA256)
    if (-not $found -and $hashLength -in @(32, 40, 64)) {
        try {
            $subpath = switch ($hashLength) {
                32 { "" }
                40 { "Sha1" }
                64 { "Sha256" }
            }
            $uri = "https://md5decrypt.net/Api/api.php?hash=$hash&hash_type=$subpath&email=demod@gmail.com&code=1152464b80a61728"
            $r = Invoke-RestMethod -Uri $uri -TimeoutSec 10 -ErrorAction Stop
            if ($r -and $r.Trim() -ne "" -and $r.Trim() -notmatch "ERROR|ERREUR|CODE") {
                $plaintext = $r.Trim()
                $found = $true
                Write-Host "  [+] CRACKED! (md5decrypt.net)" -ForegroundColor Green
                Write-Host "  [+] Plaintext: " -NoNewline -ForegroundColor Green
                Write-Host "$plaintext" -ForegroundColor White -BackgroundColor DarkGreen
                Write-Host ""
            } else {
                Write-Host "  [-] md5decrypt.net: nao encontrado" -ForegroundColor DarkGray
            }
        } catch {
            Write-Host "  [-] md5decrypt.net: timeout/erro" -ForegroundColor DarkGray
        }
    }

    # Base 4: hashes.com (identificacao gratis)
    if (-not $found) {
        try {
            $body = @{ hash = $hash }
            $r = Invoke-RestMethod -Uri "https://hashes.com/en/api/identifier" -Method POST -Body $body -TimeoutSec 10 -ErrorAction Stop
            if ($r -and $r -match "possibleHashTypes") {
                Write-Host "  [i] hashes.com identificou tipos possiveis" -ForegroundColor DarkGray
            }
        } catch {
            Write-Host "  [-] hashes.com: timeout/erro" -ForegroundColor DarkGray
        }
    }

    # Base 5: NTLM.pw (NTLM hashes)
    if (-not $found -and $hashLength -eq 32) {
        try {
            $r = Invoke-WebRequest -Uri "https://ntlm.pw/$hash" -TimeoutSec 10 -UseBasicParsing -ErrorAction Stop
            if ($r.Content -match '<td class="res-text">([^<]+)</td>') {
                $plaintext = $Matches[1].Trim()
                if ($plaintext -ne "" -and $plaintext -ne $hash) {
                    $found = $true
                    Write-Host "  [+] CRACKED! (ntlm.pw)" -ForegroundColor Green
                    Write-Host "  [+] Plaintext: " -NoNewline -ForegroundColor Green
                    Write-Host "$plaintext" -ForegroundColor White -BackgroundColor DarkGreen
                    Write-Host ""
                } else {
                    Write-Host "  [-] ntlm.pw: nao encontrado" -ForegroundColor DarkGray
                }
            } else {
                Write-Host "  [-] ntlm.pw: nao encontrado" -ForegroundColor DarkGray
            }
        } catch {
            Write-Host "  [-] ntlm.pw: timeout/erro" -ForegroundColor DarkGray
        }
    }

    # Resumo
    Write-Host ""
    if ($found) {
        Write-Host "  ============================================" -ForegroundColor Green
        Write-Host "  RESULTADO: $hash -> $plaintext" -ForegroundColor Green
        Write-Host "  ============================================" -ForegroundColor Green
    } else {
        Write-Host "  ============================================" -ForegroundColor Red
        Write-Host "  NAO ENCONTRADO em nenhuma base online" -ForegroundColor Red
        Write-Host "  ============================================" -ForegroundColor Red
        Write-Host ""
        Write-Host "  [?] Tente:" -ForegroundColor Yellow
        Write-Host "      - hashcat -m 0 $hash rockyou.txt" -ForegroundColor DarkGray
        Write-Host "      - john --format=raw-md5 hash.txt" -ForegroundColor DarkGray
        Write-Host "      - https://crackstation.net (manual)" -ForegroundColor DarkGray
    }
    Write-Host ""
}

Set-Alias -Name crackhash -Value global:crackhash -Option AllScope

#==============================================================#
#           Portas Abertas / Listening (netstat)                #
#==============================================================#

function global:ports {
    param ([string]$filter)

    $connections = Get-NetTCPConnection -ErrorAction SilentlyContinue | Where-Object {
        $_.State -eq 'Listen' -or $_.State -eq 'Established'
    }

    if (-not $connections) {
        Write-Host "Nenhuma conexao encontrada." -ForegroundColor Red
        return
    }

    $results = $connections | ForEach-Object {
        $proc = Get-Process -Id $_.OwningProcess -ErrorAction SilentlyContinue
        [PSCustomObject]@{
            Proto  = "TCP"
            Local  = "$($_.LocalAddress):$($_.LocalPort)"
            Remote = "$($_.RemoteAddress):$($_.RemotePort)"
            State  = $_.State
            PID    = $_.OwningProcess
            Process = if ($proc) { $proc.ProcessName } else { "-" }
        }
    }

    if ($filter) {
        $results = $results | Where-Object {
            $_.Local -like "*$filter*" -or $_.Process -like "*$filter*" -or $_.PID -eq $filter
        }
    }

    $results | Sort-Object State, Local | Format-Table -AutoSize | Out-Host
}

Set-Alias -Name ports -Value global:ports -Option AllScope

#==============================================================#
#              Busca de Processo (proc)                         #
#==============================================================#

function global:proc {
    param ([string]$name)

    if (-not $name) {
        Write-Host "Uso: proc <nome_processo>" -ForegroundColor Yellow
        Write-Host "     proc chrome" -ForegroundColor DarkGray
        return
    }

    $procs = Get-Process | Where-Object { $_.ProcessName -like "*$name*" } |
        Select-Object @{N='PID';E={$_.Id}},
                      @{N='Nome';E={$_.ProcessName}},
                      @{N='CPU(s)';E={[math]::Round($_.CPU, 1)}},
                      @{N='RAM(MB)';E={[math]::Round($_.WorkingSet64 / 1MB, 1)}},
                      @{N='Threads';E={$_.Threads.Count}}

    if ($procs) {
        $procs | Sort-Object 'RAM(MB)' -Descending | Format-Table -AutoSize | Out-Host
        $total = ($procs | Measure-Object -Property 'RAM(MB)' -Sum).Sum
        Write-Host "  Total RAM: $([math]::Round($total, 1)) MB | Processos: $($procs.Count)" -ForegroundColor Cyan
    } else {
        Write-Host "Nenhum processo encontrado com '$name'" -ForegroundColor Red
    }
}

Set-Alias -Name proc -Value global:proc -Option AllScope

#==============================================================#
#                    Weather (wttr.in)                          #
#==============================================================#

function global:weather {
    param ([string[]]$cities)

    $headers = @{ "User-Agent" = "curl/7.68.0" }
    if (-not $cities -or $cities.Count -eq 0) {
        $cities = $LyonShell.WeatherCities
    }

    Write-Host ""
    foreach ($city in $cities) {
        try {
            $r = Invoke-RestMethod -Uri "https://wttr.in/${city}?format=3&lang=pt" -Headers $headers -TimeoutSec 10
            $detail = Invoke-RestMethod -Uri "https://wttr.in/${city}?format=%t+%h+%w+%C&lang=pt" -Headers $headers -TimeoutSec 10
            $displayName = $r.Trim() -replace '\+', ' '
            Write-Host "  $displayName" -ForegroundColor Cyan
            Write-Host "  $($detail.Trim())" -ForegroundColor White
            Write-Host ""
        } catch {
            Write-Host "  Erro: $city" -ForegroundColor Red
        }
    }
}

Set-Alias -Name weather -Value global:weather -Option AllScope

#==============================================================#
#                 Whois Lookup (dominio/IP)                     #
#==============================================================#

function global:whois {
    param ([string]$target)

    if (-not $target) {
        Write-Host "Uso: whois <dominio ou IP>" -ForegroundColor Yellow
        return
    }

    try {
        # IP check
        if ($target -match '^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$') {
            $r = Invoke-RestMethod -Uri "https://ipinfo.io/$target/json" -TimeoutSec 8
            Write-Host ""
            Write-Host "  IP:       $($r.ip)" -ForegroundColor White
            Write-Host "  Hostname: $($r.hostname)" -ForegroundColor White
            Write-Host "  Org:      $($r.org)" -ForegroundColor Cyan
            Write-Host "  City:     $($r.city)" -ForegroundColor White
            Write-Host "  Region:   $($r.region)" -ForegroundColor White
            Write-Host "  Country:  $($r.country)" -ForegroundColor White
            Write-Host "  Loc:      $($r.loc)" -ForegroundColor DarkGray
            Write-Host ""
        } else {
            # Domain - resolve + lookup
            $ips = [System.Net.Dns]::GetHostAddresses($target) | ForEach-Object { $_.IPAddressToString }
            $ip = $ips | Select-Object -First 1
            $r = Invoke-RestMethod -Uri "https://ipinfo.io/$ip/json" -TimeoutSec 8

            Write-Host ""
            Write-Host "  Domain:   $target" -ForegroundColor Cyan
            Write-Host "  IPs:      $($ips -join ', ')" -ForegroundColor White
            Write-Host "  Org:      $($r.org)" -ForegroundColor White
            Write-Host "  City:     $($r.city)" -ForegroundColor White
            Write-Host "  Region:   $($r.region)" -ForegroundColor White
            Write-Host "  Country:  $($r.country)" -ForegroundColor White
            Write-Host ""
        }
    } catch {
        Write-Host "Erro ao consultar whois: $_" -ForegroundColor Red
    }
}

Set-Alias -Name whois -Value global:whois -Option AllScope

#==============================================================#
#              System Info Dashboard (sysinfo)                  #
#==============================================================#

function global:sysinfo {
    # Collect data
    $os = Get-CimInstance Win32_OperatingSystem
    $cs = Get-CimInstance Win32_ComputerSystem
    $cpu = Get-CimInstance Win32_Processor | Select-Object -First 1
    $gpus = Get-CimInstance Win32_VideoController
    $disks = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"
    $board = Get-CimInstance Win32_BaseBoard
    $nics = Get-CimInstance Win32_NetworkAdapter | Where-Object { $_.PhysicalAdapter -eq $true -and $_.MACAddress -and $_.NetConnectionID -and $_.NetConnectionID -notmatch 'VMware|Hyper-V|vEthernet|Bluetooth' }
    $audio = (Get-CimInstance Win32_SoundDevice | Where-Object { $_.Name -notmatch 'NVIDIA|AMD|Virtual|Logitech|Corsair|SteelSeries|HyperX|Razer|JBL|Sony|Bose|Sennheiser' } | Select-Object -First 1).Name
    $headset = (Get-CimInstance Win32_SoundDevice | Where-Object { $_.Name -match 'Logitech|Corsair|SteelSeries|HyperX|Razer|JBL|Sony|Bose|Sennheiser' } | Select-Object -First 1).Name
    $bios = Get-CimInstance Win32_BIOS
    $kb = (Get-CimInstance Win32_Keyboard | Where-Object { $_.Description -match 'Razer|Corsair|Logitech|SteelSeries|HyperX|Ducky|Wooting' } | Select-Object -First 1).Description
    if (-not $kb) { $kb = (Get-CimInstance Win32_Keyboard | Select-Object -First 1).Description }
    $mouse = (Get-CimInstance Win32_PointingDevice | Where-Object { $_.Name -match 'Razer|Corsair|Logitech|SteelSeries|HyperX|Glorious' } | Select-Object -First 1).Name
    if (-not $mouse) { $mouse = (Get-CimInstance Win32_PointingDevice | Select-Object -First 1).Name }
    $monitors = @()
    try {
        # Get per-monitor Hz via EnumDisplaySettings
        Add-Type -TypeDefinition @"
using System; using System.Runtime.InteropServices;
public class SysInfoMonHz {
    [DllImport("user32.dll", CharSet = CharSet.Unicode)]
    public static extern int EnumDisplaySettingsW(string dev, int mode, ref DEVMODE dm);
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
    public struct DEVMODE {
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)] public string dmDeviceName;
        public short dmSpecVersion; public short dmDriverVersion; public short dmSize;
        public short dmDriverExtra; public int dmFields; public int dmPositionX;
        public int dmPositionY; public int dmDisplayOrientation; public int dmDisplayFixedOutput;
        public short dmColor; public short dmDuplex; public short dmYResolution;
        public short dmTTOption; public short dmCollate;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)] public string dmFormName;
        public short dmLogPixels; public int dmBitsPerPel; public int dmPelsWidth;
        public int dmPelsHeight; public int dmDisplayFlags; public int dmDisplayFrequency;
    }
}
"@ -ErrorAction SilentlyContinue
        Add-Type -AssemblyName System.Windows.Forms -ErrorAction SilentlyContinue

        # Build Hz lookup: DISPLAY index -> Hz
        $hzLookup = @{}
        foreach ($scr in [System.Windows.Forms.Screen]::AllScreens) {
            $dm = New-Object SysInfoMonHz+DEVMODE
            $dm.dmSize = [System.Runtime.InteropServices.Marshal]::SizeOf($dm)
            $null = [SysInfoMonHz]::EnumDisplaySettingsW($scr.DeviceName, -1, [ref]$dm)
            # Extract display number from \\.\DISPLAY1
            $dispNum = ($scr.DeviceName -replace '[^\d]','')
            $hzLookup[$dispNum] = $dm.dmDisplayFrequency
        }

        # Build Hz array sorted by DISPLAY number (1,2,3...)
        $hzArray = $hzLookup.GetEnumerator() | Sort-Object Name | ForEach-Object { $_.Value }

        # WMI monitors come in reverse DISPLAY order, so reverse the Hz array
        [array]::Reverse($hzArray)

        $monIds = Get-CimInstance WmiMonitorID -Namespace root\wmi -ErrorAction Stop
        $monIdx = 0
        foreach ($mon in $monIds) {
            $mfr = -join ($mon.ManufacturerName | Where-Object {$_ -ne 0} | ForEach-Object {[char]$_})
            $name = -join ($mon.UserFriendlyName | Where-Object {$_ -ne 0} | ForEach-Object {[char]$_})
            $monStr = "$name".Trim()
            if ($monIdx -lt $hzArray.Count) {
                $hz = $hzArray[$monIdx]
                if ($hz -and $hz -gt 0) { $monStr += " (${hz}Hz)" }
            }
            $monitors += $monStr
            $monIdx++
        }
    } catch {}

    $totalRAM = [math]::Round($os.TotalVisibleMemorySize / 1MB, 1)
    $usedRAM = [math]::Round(($os.TotalVisibleMemorySize - $os.FreePhysicalMemory) / 1MB, 1)
    $ramPct = [math]::Round(($usedRAM / $totalRAM) * 100)

    $uptime = (Get-Date) - $os.LastBootUpTime
    $uptimeStr = if ($uptime.Days -gt 0) { "{0}d {1}h {2}m" -f $uptime.Days, $uptime.Hours, $uptime.Minutes } else { "{0}h {1}m" -f $uptime.Hours, $uptime.Minutes }

    $shell = "PowerShell $($PSVersionTable.PSVersion.Major).$($PSVersionTable.PSVersion.Minor)"
    $procs = (Get-Process).Count
    $osName = $os.Caption -replace 'Microsoft ',''
    $cpuName = $cpu.Name.Trim()
    $mobo = "$($board.Manufacturer) $($board.Product)"

    # RAM sticks info
    $ramSticks = Get-CimInstance Win32_PhysicalMemory
    $ramCount = ($ramSticks | Measure-Object).Count
    $ramSize = [math]::Round(($ramSticks | Select-Object -First 1).Capacity / 1GB)
    $ramSpeed = ($ramSticks | Select-Object -First 1).Speed
    $ramType = switch (($ramSticks | Select-Object -First 1).SMBIOSMemoryType) { 20 {"DDR"} 21 {"DDR2"} 24 {"DDR3"} 26 {"DDR4"} 34 {"DDR5"} default {"DDR"} }
    $ramPart = ($ramSticks | Select-Object -First 1).PartNumber.Trim()
    # Decode brand from part number
    $ramBrand = if ($ramPart -match '^CMK|^CMW|^CMH|^CMP') { "Corsair" } elseif ($ramPart -match '^KF|^HX') { "Kingston" } elseif ($ramPart -match '^F[345]-') { "G.Skill" } elseif ($ramPart -match '^BL') { "Crucial" } elseif ($ramPart -match '^M[34]') { "Samsung" } elseif ($ramPart -match '^HMA|^HMT') { "SK Hynix" } else { $ramPart }
    $ramTotal = $ramCount * $ramSize
    $ramStr = "${ramTotal}GB $ramType @ ${ramSpeed}MHz (${ramCount}x ${ramSize}GB $ramBrand)"

    # GPU with VRAM
    $gpuDedicated = $gpus | Where-Object { $_.Name -match 'NVIDIA|RTX|GTX|Radeon RX' } | Select-Object -First 1
    if (-not $gpuDedicated) { $gpuDedicated = $gpus | Select-Object -First 1 }
    $gpuVram = [math]::Round($gpuDedicated.AdapterRAM / 1GB, 0)
    $gpuStr = "$($gpuDedicated.Name) ($($gpuVram)GB)"

    # Resolution from dedicated GPU
    $resGpu = $gpus | Where-Object { $_.CurrentHorizontalResolution } | Select-Object -First 1
    $resolution = if ($resGpu) { "$($resGpu.CurrentHorizontalResolution)x$($resGpu.CurrentVerticalResolution) @ $($resGpu.CurrentRefreshRate)Hz" } else { "N/A" }

    # iGPU
    $gpuIntegrated = $gpus | Where-Object { $_.Name -match 'AMD Radeon\(TM\) Graphics|Intel.*UHD|Intel.*Iris' } | Select-Object -First 1

    # Public IP + ISP
    $pubIP = "N/A"
    $ispName = ""
    try {
        $resp = Invoke-WebRequest -Uri 'https://ipinfo.io/json' -TimeoutSec 3 -UseBasicParsing
        $raw = [System.Text.Encoding]::UTF8.GetString($resp.RawContentStream.ToArray())
        $ipData = $raw | ConvertFrom-Json
        $pubIP = $ipData.ip
        if ($ipData.org) { $ispName = ($ipData.org -replace '^AS\d+\s*', '').Trim() }
    } catch {}

    # BIOS info + age tag
    $biosVer = $bios.SMBIOSBIOSVersion
    $biosDate = $bios.ReleaseDate

    # BIOS update check (cached 24h, via ASRock Wiki)
    $biosTag = ""
    $biosCacheFile = "$env:TEMP\sysinfo_bios_cache.txt"
    $biosCacheValid = $false
    if (Test-Path $biosCacheFile) {
        $cacheAge = ((Get-Date) - (Get-Item $biosCacheFile).LastWriteTime).TotalHours
        if ($cacheAge -lt 24) { $biosCacheValid = $true }
    }
    if ($biosCacheValid) {
        $biosLatest = (Get-Content $biosCacheFile -ErrorAction SilentlyContinue).Trim()
    } else {
        try {
            $wikiPage = Invoke-WebRequest -Uri "https://botflakes.de/asrockwiki/bios/amd/" -TimeoutSec 5 -UseBasicParsing -ErrorAction Stop
            $boardName = $board.Product -replace ' ','' -replace 'X670E','x670e-'
            $secIdx = $wikiPage.Content.IndexOf("$($board.Product)</strong>")
            if ($secIdx -gt 0) {
                $section = $wikiPage.Content.Substring($secIdx, [math]::Min(3000, $wikiPage.Content.Length - $secIdx))
                $verMatches = [regex]::Matches($section, '<tr><td[^>]*>(\d+\.\d+)')
                if ($verMatches.Count -gt 0) {
                    $biosLatest = $verMatches[0].Groups[1].Value
                    $biosLatest | Out-File $biosCacheFile -Force
                }
            }
        } catch { $biosLatest = $null }
    }
    if ($biosLatest -and [version]"$biosLatest.0" -gt [version]"$biosVer.0") {
        $biosTag = " [UPDATE v$biosLatest]"
    }

    # GPU Driver version (NVIDIA format: 32.0.15.XXYY -> XXX.YY)
    $nvidiaGpu = $gpus | Where-Object { $_.Name -match 'NVIDIA' } | Select-Object -First 1
    $gpuDriverStr = "N/A"
    $gpuDriverTag = ""
    $currentNvVer = ""
    if ($nvidiaGpu) {
        $drvRaw = $nvidiaGpu.DriverVersion
        if ($drvRaw -match '(\d+)\.(\d+)$') {
            # NVIDIA marketing format: "32.0.15.9186" → concat last two "159186" → last 5 "59186" → "591.86"
            $combined = "$($Matches[1])$($Matches[2])"
            $last5 = $combined.Substring($combined.Length - 5)
            $currentNvVer = "$($last5.Substring(0,3)).$($last5.Substring(3,2))"
            $gpuDriverStr = $currentNvVer
        } else { $gpuDriverStr = $drvRaw }

        # NVIDIA driver update check (cached 24h)
        $nvCacheFile = "$env:TEMP\sysinfo_nvdrv_cache.txt"
        $nvCacheValid = $false
        if (Test-Path $nvCacheFile) {
            $cAge = ((Get-Date) - (Get-Item $nvCacheFile).LastWriteTime).TotalHours
            if ($cAge -lt 24) { $nvCacheValid = $true }
        }
        if ($nvCacheValid) {
            $nvLatest = Get-Content $nvCacheFile -ErrorAction SilentlyContinue
        } else {
            try {
                $nvApi = Invoke-RestMethod -Uri "https://gfwsl.geforce.com/services_toolkit/services/com/nvidia/services/AjaxDriverService.php?func=DriverManualLookup&psid=120&pfid=929&osID=57&languageCode=1046&isWHQL=1&dch=1&sort1=0&numberOfResults=1" -TimeoutSec 5 -ErrorAction Stop
                if ($nvApi.IDS -and $nvApi.IDS[0].downloadInfo.Version) {
                    $nvLatest = $nvApi.IDS[0].downloadInfo.Version
                    $nvLatest | Out-File $nvCacheFile -Force
                }
            } catch { $nvLatest = $null }
        }
        if ($nvLatest -and $currentNvVer) {
            $curNum = [decimal]($currentNvVer -replace '\.','')
            $latNum = [decimal]($nvLatest -replace '\.','')
            if ($latNum -gt $curNum) { $gpuDriverTag = " [UPDATE v$nvLatest]" }
        }
    }

    # Net link speed
    $ethNic = Get-CimInstance Win32_NetworkAdapter | Where-Object { $_.NetConnectionID -eq 'Ethernet' -and $_.Speed } | Select-Object -First 1
    $netSpeed = if ($ethNic -and $ethNic.Speed) { "$([math]::Round($ethNic.Speed / 1e9, 1)) Gbps" } else { "N/A" }

    # Timezone
    $tz = (Get-TimeZone)
    $tzCity = switch -Wildcard ($tz.Id) { "E. South America*" {"America/Sao_Paulo"} "Pacific*" {"America/Los_Angeles"} "Eastern*" {"America/New_York"} "Central*" {"America/Chicago"} default {$tz.Id -replace ' Standard Time',''} }
    $tzStr = "$tzCity (UTC$( if($tz.BaseUtcOffset.Hours -ge 0){'+'}else{''} )$($tz.BaseUtcOffset.Hours.ToString('00')):$($tz.BaseUtcOffset.Minutes.ToString('00')))"

    # NTP Server
    $ntpServer = try { ((Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Services\W32Time\Parameters' -ErrorAction Stop).NtpServer -split ',')[0] } catch { "N/A" }

    # Last Windows Update
    $lastUpdate = Get-HotFix -ErrorAction SilentlyContinue | Where-Object { $_.InstalledOn } | Sort-Object InstalledOn -Descending | Select-Object -First 1
    $lastUpdateStr = if ($lastUpdate) { "$($lastUpdate.HotFixID) ($($lastUpdate.InstalledOn.ToString('dd/MM/yyyy')))" } else { "N/A" }

    # Helpers
    function Write-Bar([int]$pct, [int]$w = 22) {
        $filled = [math]::Round($pct / 100 * $w)
        $empty = $w - $filled
        $color = if ($pct -gt 85) { "Red" } elseif ($pct -gt 60) { "Yellow" } else { "Green" }
        Write-Host -NoNewline ([string][char]0x2588 * $filled) -ForegroundColor $color
        Write-Host -NoNewline ([string][char]0x2591 * $empty) -ForegroundColor DarkGray
    }

    function Write-Line([string]$lbl, [string]$val, [string]$valColor = "White") {
        Write-Host -NoNewline "   "
        Write-Host -NoNewline $lbl.PadRight(12) -ForegroundColor Blue
        Write-Host $val -ForegroundColor $valColor
    }

    function Write-Section { Write-Host "" }

    # === RENDER ===
    $user = "$($env:USERNAME)@$($env:COMPUTERNAME)"
    $sep = ([string][char]0x2500) * ($user.Length + 2)

    Write-Host ""
    Write-Host "   $user" -ForegroundColor Blue
    Write-Host "   $sep" -ForegroundColor DarkGray

    # System
    $buildNum = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -ErrorAction SilentlyContinue).DisplayVersion
    Write-Line "OS"       "$osName $($os.OSArchitecture) (Build $($os.BuildNumber) / $buildNum)"
    Write-Line "Host"     $env:COMPUTERNAME
    Write-Line "Kernel"   "NT $($os.Version)"
    Write-Line "Shell"    $shell
    Write-Line "Timezone" $tzStr
    Write-Line "Uptime"   $uptimeStr
    Write-Line "Procs"    "$procs running"
    Write-Line "Update"   $lastUpdateStr

    Write-Section

    # Hardware
    Write-Line "Mobo"     $mobo
    Write-Host -NoNewline "   "
    Write-Host -NoNewline "BIOS".PadRight(12) -ForegroundColor Blue
    Write-Host -NoNewline "v$biosVer" -ForegroundColor White
    if ($biosTag) { Write-Host $biosTag -ForegroundColor DarkYellow } else { Write-Host "" }
    Write-Line "CPU"      $cpuName
    Write-Line "RAM"      $ramStr
    Write-Line "GPU"      $gpuStr
    Write-Host -NoNewline "   "
    Write-Host -NoNewline "GPU Drv".PadRight(12) -ForegroundColor Blue
    Write-Host -NoNewline $gpuDriverStr -ForegroundColor White
    if ($gpuDriverTag) { Write-Host $gpuDriverTag -ForegroundColor DarkYellow } else { Write-Host "" }
    if ($gpuIntegrated) {
        $iVram = [math]::Round($gpuIntegrated.AdapterRAM / 1MB, 0)
        Write-Line "iGPU"  "$($gpuIntegrated.Name) (${iVram}MB)"
    }
    Write-Line "Audio"    $(if ($audio) { $audio } else { "N/A" })
    if ($headset) { Write-Line "Headset" $headset }

    # Monitors (with Hz)
    foreach ($mon in $monitors) {
        Write-Line "Monitor" $mon
    }

    Write-Section

    # Peripherals
    Write-Line "Keyboard" $(if ($kb) { $kb } else { "N/A" })
    Write-Line "Mouse"    $(if ($mouse) { $mouse } else { "N/A" })

    Write-Section

    # Network
    foreach ($nic in $nics) {
        $nicLabel = $nic.NetConnectionID
        Write-Host -NoNewline "   "
        Write-Host -NoNewline $nicLabel.PadRight(12) -ForegroundColor Blue
        Write-Host -NoNewline $nic.MACAddress -ForegroundColor White
        Write-Host " ($($nic.Name))" -ForegroundColor DarkGray
    }
    Write-Line "Link"     $netSpeed
    Write-Line "NTP"      $ntpServer
    Write-Line "LAN IP"   (Get-LocalIPAddress)
    Write-Host -NoNewline "   "
    Write-Host -NoNewline "WAN IP".PadRight(12) -ForegroundColor Blue
    Write-Host -NoNewline $pubIP -ForegroundColor Green
    if ($ispName) { Write-Host " ($ispName)" -ForegroundColor DarkGray } else { Write-Host "" }

    Write-Section

    # Memory bar
    Write-Host -NoNewline "   "
    Write-Host -NoNewline "Memory".PadRight(12) -ForegroundColor Blue
    Write-Bar $ramPct
    Write-Host " ${usedRAM}G / ${totalRAM}G ($ramPct%)" -ForegroundColor DarkGray

    # Disk bars
    foreach ($d in $disks) {
        $dTotal = [math]::Round($d.Size / 1GB)
        $dUsed = [math]::Round(($d.Size - $d.FreeSpace) / 1GB)
        $dPct = if ($dTotal -gt 0) { [math]::Round(($dUsed / $dTotal) * 100) } else { 0 }
        $dName = if ($d.VolumeName) { $d.VolumeName } else { "Local Disk" }
        $dLabel = "$($d.DeviceID) $dName"
        $dLabel = "Disk $($d.DeviceID)"
        Write-Host -NoNewline "   "
        Write-Host -NoNewline $dLabel.PadRight(12) -ForegroundColor Blue
        Write-Bar $dPct
        Write-Host -NoNewline " ${dUsed}G / ${dTotal}G ($dPct%)" -ForegroundColor DarkGray
        Write-Host " $dName" -ForegroundColor DarkYellow
    }

    # Color palette
    Write-Host ""
    Write-Host -NoNewline "   "
    foreach ($clr in @("Black","DarkRed","DarkGreen","DarkYellow","DarkBlue","DarkMagenta","DarkCyan","Gray")) {
        Write-Host -NoNewline "   " -BackgroundColor $clr
    }
    Write-Host ""
    Write-Host -NoNewline "   "
    foreach ($clr in @("DarkGray","Red","Green","Yellow","Blue","Magenta","Cyan","White")) {
        Write-Host -NoNewline "   " -BackgroundColor $clr
    }
    Write-Host ""
    Write-Host ""
}

Set-Alias -Name sysinfo -Value global:sysinfo -Option AllScope

#==============================================================#
#         Atualizar Pacotes no Windows com Winget              #
#==============================================================#

function global:updatefull {
    Write-Host "Iniciando atualização completa do sistema..." -ForegroundColor Cyan

    # Passo 1: Verificar atualizações disponíveis
    Write-Host "[+] Verificando pacotes atualizáveis..." -ForegroundColor Green
    try {
        $checkUpdates = winget upgrade --accept-source-agreements --accept-package-agreements
        if ($checkUpdates -match "Nenhum pacote instalado foi encontrado") {
            Write-Host "[+] Todos os pacotes já estão atualizados." -ForegroundColor Yellow
            return
        }
    }
    catch {
        Write-Host "[!] Erro ao verificar atualizações: $_" -ForegroundColor Red
        return
    }

    # Passo 2: Aplicar todas as atualizações disponíveis
    Write-Host "[+] Aplicando atualizações para todos os pacotes instalados..." -ForegroundColor Green
    try {
        winget upgrade --all --include-unknown --accept-source-agreements --accept-package-agreements
    }
    catch {
        Write-Host "[!] Erro ao aplicar atualizações: $_" -ForegroundColor Red
    }

    # Passo 3: Limpeza automática de pacotes obsoletos
    Write-Host "[+] Realizando limpeza de pacotes obsoletos..." -ForegroundColor Green
    try {
        $installedPackages = winget list --source winget
        foreach ($package in $installedPackages) {
            $packageId = $package.split()[0]
            if ($packageId -ne "") {
                try {
                    Write-Host "[+] Tentando desinstalar pacote obsoleto: $packageId" -ForegroundColor Yellow
                    winget uninstall --id $packageId --silent --accept-source-agreements
                }
                catch {
                    Write-Host "[!] Não foi possível remover o pacote: $packageId" -ForegroundColor Red
                }
            }
        }
    }
    catch {
        Write-Host "[!] Erro durante a limpeza de pacotes obsoletos: $_" -ForegroundColor Red
    }

    Write-Host "[+] Atualização completa concluída com sucesso!" -ForegroundColor Cyan
}






# ============================================================================ #
#                        ATIVAR CONFIGURACOES DO SISTEMA                        #
# ============================================================================ #
# Registra todas as Scheduled Tasks da pasta Scripts do OneDrive

