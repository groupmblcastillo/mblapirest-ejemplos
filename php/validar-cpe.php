<?php
// Validar comprobante electrónico ante SUNAT — POST /v1/cpe/validar

$token = '<tu_token>';

$datos = [
    'ruc' => '20123456789',
    'document_type' => '01',
    'serie' => 'F001',
    'numero' => '123',
    'fecha' => '2026-07-23',
    'monto' => '118.00',
];

$ch = curl_init('https://mblapirest.com/api/v1/cpe/validar');
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($datos));
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    "Authorization: Bearer {$token}",
]);

$respuesta = json_decode(curl_exec($ch), true);
curl_close($ch);

print_r($respuesta);
