// Enviar mensaje de WhatsApp — POST /v1/whatsapp/enviar-texto
// Si tienes una sola cuenta de WhatsApp vinculada, "account_id" es opcional.
const token = "<tu_token>";

const cuerpo = new URLSearchParams({
  account_id: "1",
  numero: "51999999999",
  mensaje: "Hola, este es un mensaje de prueba",
});

const respuesta = await fetch("https://mblapirest.com/api/v1/whatsapp/enviar-texto", {
  method: "POST",
  headers: {
    Authorization: `Bearer ${token}`,
    "Content-Type": "application/x-www-form-urlencoded",
  },
  body: cuerpo,
});
console.log(await respuesta.json());
