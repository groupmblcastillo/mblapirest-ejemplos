<?php
// Consulta RUC — GET /v1/ruc/{numero}

$token = '<tu_token>';
$numero = '20123456789';

$ch = curl_init("https://mblapirest.com/api/v1/ruc/{$numero}");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    "Authorization: Bearer {$token}",
]);

$respuesta = json_decode(curl_exec($ch), true);
curl_close($ch);

print_r($respuesta);
