"""Consulta DNI — GET /v1/dni/{numero}"""
import requests

token = "<tu_token>"
numero = "12345678"

respuesta = requests.get(
    f"https://mblapirest.com/api/v1/dni/{numero}",
    headers={"Authorization": f"Bearer {token}"},
)
print(respuesta.json())
