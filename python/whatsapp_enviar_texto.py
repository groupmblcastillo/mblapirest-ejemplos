"""Enviar mensaje de WhatsApp — POST /v1/whatsapp/enviar-texto
Si tienes una sola cuenta de WhatsApp vinculada, "account_id" es opcional.
"""
import requests

token = "<tu_token>"

datos = {
    "account_id": "1",
    "numero": "51999999999",
    "mensaje": "Hola, este es un mensaje de prueba",
}

respuesta = requests.post(
    "https://mblapirest.com/api/v1/whatsapp/enviar-texto",
    headers={"Authorization": f"Bearer {token}"},
    data=datos,
)
print(respuesta.json())
