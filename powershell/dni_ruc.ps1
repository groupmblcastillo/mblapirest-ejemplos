# Consulta DNI y RUC — mblapirest.com
$token = "<tu_token>"
$base = "https://mblapirest.com/api/v1"
$headers = @{ Authorization = "Bearer $token" }

Invoke-RestMethod -Uri "$base/dni/12345678" -Headers $headers
Invoke-RestMethod -Uri "$base/ruc/20123456789" -Headers $headers
