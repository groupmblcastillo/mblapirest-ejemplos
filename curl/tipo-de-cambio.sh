#!/usr/bin/env bash
# Tipo de cambio SUNAT del día — POST /v1/tipo-de-cambio
curl -X POST "https://mblapirest.com/api/v1/tipo-de-cambio" \
  -H "Authorization: Bearer <tu_token>" \
  --data-urlencode "fecha=2026-07-23"
