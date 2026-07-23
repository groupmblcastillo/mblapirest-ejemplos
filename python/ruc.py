"""Consulta RUC — GET /v1/ruc/{numero}"""
import requests

token = "<tu_token>"
numero = "20123456789"

respuesta = requests.get(
    f"https://mblapirest.com/api/v1/ruc/{numero}",
    headers={"Authorization": f"Bearer {token}"},
)
print(respuesta.json())
