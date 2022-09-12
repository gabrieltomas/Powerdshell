# Script para copiar arquivos de um unico diretorio para um diretorio para cada arquivo 
# Para isso, cria-se uma pasta para cada arquivo utilizando o sequencial que compoe o nome do arquivo
# como nome da pasta


# Necessita alterar as Politicas de execucao do Powershell para executar o script
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
# Aconselha-se voltar a politica de execucao anterior
# Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser

# exemplo de como criar as pastas em lote via linha de comando 
# mkdir $(285463..285863 | %{"$_"})

$prefixo = "image";

for($sequencial = 285463; $sequencial -le 285863; $sequencial++)
{
    $arquivo = "C:\Users\user\original\45445\"+$prefixo+$sequencial+".jpg"; 
    $destino = "C:\Users\user\quebra\45445\"+$sequencial;
    
    New-Item -Path $destino -ItemType "directory"
    
    Write-Host $arquivo;
    Write-Host $destino;

    Copy-Item $arquivo -Destination $destino

}
