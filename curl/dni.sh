#!/usr/bin/env bash
# Consulta DNI — GET /v1/dni/{numero}
curl "https://mblapirest.com/api/v1/dni/12345678" \
  -H "Authorization: Bearer <tu_token>"
