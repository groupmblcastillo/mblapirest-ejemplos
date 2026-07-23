<?php
// Consulta DNI — GET /v1/dni/{numero}

$token = '<tu_token>';
$numero = '12345678';

$ch = curl_init("https://mblapirest.com/api/v1/dni/{$numero}");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    "Authorization: Bearer {$token}",
]);

$respuesta = json_decode(curl_exec($ch), true);
curl_close($ch);

print_r($respuesta);
