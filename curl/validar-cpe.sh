#!/usr/bin/env bash
# Validar comprobante electrónico ante SUNAT — POST /v1/cpe/validar
curl -X POST "https://mblapirest.com/api/v1/cpe/validar" \
  -H "Authorization: Bearer <tu_token>" \
  --data-urlencode "ruc=20123456789" \
  --data-urlencode "document_type=01" \
  --data-urlencode "serie=F001" \
  --data-urlencode "numero=123" \
  --data-urlencode "fecha=2026-07-23" \
  --data-urlencode "monto=118.00"
