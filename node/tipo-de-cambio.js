// Tipo de cambio SUNAT del día — POST /v1/tipo-de-cambio
const token = "<tu_token>";

const cuerpo = new URLSearchParams({ fecha: "2026-07-23" });

const respuesta = await fetch("https://mblapirest.com/api/v1/tipo-de-cambio", {
  method: "POST",
  headers: {
    Authorization: `Bearer ${token}`,
    "Content-Type": "application/x-www-form-urlencoded",
  },
  body: cuerpo,
});
console.log(await respuesta.json());
