"""Tipo de cambio SUNAT del día — POST /v1/tipo-de-cambio"""
import requests

token = "<tu_token>"

respuesta = requests.post(
    "https://mblapirest.com/api/v1/tipo-de-cambio",
    headers={"Authorization": f"Bearer {token}"},
    data={"fecha": "2026-07-23"},
)
print(respuesta.json())
