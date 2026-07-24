<?php
// Enviar mensaje de WhatsApp — POST /v1/whatsapp/enviar-texto
// Si tienes una sola cuenta de WhatsApp vinculada, "account_id" es opcional.

$token = '<tu_token>';

$datos = [
    'account_id' => '1',
    'numero' => '51999999999',
    'mensaje' => 'Hola, este es un mensaje de prueba',
];

$ch = curl_init('https://mblapirest.com/api/v1/whatsapp/enviar-texto');
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($datos));
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    "Authorization: Bearer {$token}",
]);

$respuesta = json_decode(curl_exec($ch), true);
curl_close($ch);

print_r($respuesta);
