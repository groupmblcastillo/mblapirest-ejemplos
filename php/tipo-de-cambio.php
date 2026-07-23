<?php
// Tipo de cambio SUNAT del día — POST /v1/tipo-de-cambio

$token = '<tu_token>';

$ch = curl_init('https://mblapirest.com/api/v1/tipo-de-cambio');
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query(['fecha' => '2026-07-23']));
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    "Authorization: Bearer {$token}",
]);

$respuesta = json_decode(curl_exec($ch), true);
curl_close($ch);

print_r($respuesta);
