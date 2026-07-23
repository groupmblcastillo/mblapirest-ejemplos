// Validar comprobante electrónico ante SUNAT — POST /v1/cpe/validar
const token = "<tu_token>";

const cuerpo = new URLSearchParams({
  ruc: "20123456789",
  document_type: "01",
  serie: "F001",
  numero: "123",
  fecha: "2026-07-23",
  monto: "118.00",
});

const respuesta = await fetch("https://mblapirest.com/api/v1/cpe/validar", {
  method: "POST",
  headers: {
    Authorization: `Bearer ${token}`,
    "Content-Type": "application/x-www-form-urlencoded",
  },
  body: cuerpo,
});
console.log(await respuesta.json());
