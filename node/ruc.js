// Consulta RUC — GET /v1/ruc/{numero}
const token = "<tu_token>";
const numero = "20123456789";

const respuesta = await fetch(`https://mblapirest.com/api/v1/ruc/${numero}`, {
  headers: { Authorization: `Bearer ${token}` },
});
console.log(await respuesta.json());
