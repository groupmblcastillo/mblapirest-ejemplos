#!/usr/bin/env bash
# Enviar mensaje de WhatsApp — POST /v1/whatsapp/enviar-texto
# Si tienes una sola cuenta de WhatsApp vinculada, "account_id" es opcional.
curl -X POST "https://mblapirest.com/api/v1/whatsapp/enviar-texto" \
  -H "Authorization: Bearer <tu_token>" \
  --data-urlencode "account_id=1" \
  --data-urlencode "numero=51999999999" \
  --data-urlencode "mensaje=Hola, este es un mensaje de prueba"
