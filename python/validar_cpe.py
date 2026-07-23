"""Validar comprobante electrónico ante SUNAT — POST /v1/cpe/validar"""
import requests

token = "<tu_token>"

datos = {
    "ruc": "20123456789",
    "document_type": "01",
    "serie": "F001",
    "numero": "123",
    "fecha": "2026-07-23",
    "monto": "118.00",
}

respuesta = requests.post(
    "https://mblapirest.com/api/v1/cpe/validar",
    headers={"Authorization": f"Bearer {token}"},
    data=datos,
)
print(respuesta.json())
