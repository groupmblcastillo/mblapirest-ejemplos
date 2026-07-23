// Consulta DNI — GET /v1/dni/{numero}
const token = "<tu_token>";
const numero = "12345678";

const respuesta = await fetch(`https://mblapirest.com/api/v1/dni/${numero}`, {
  headers: { Authorization: `Bearer ${token}` },
});
console.log(await respuesta.json());
