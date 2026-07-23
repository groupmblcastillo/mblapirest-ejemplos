#!/usr/bin/env bash
# Consulta RUC — GET /v1/ruc/{numero}
curl "https://mblapirest.com/api/v1/ruc/20123456789" \
  -H "Authorization: Bearer <tu_token>"
