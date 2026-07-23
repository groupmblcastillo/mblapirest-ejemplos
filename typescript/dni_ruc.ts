// Consulta DNI y RUC — mblapirest.com
const token = "<tu_token>";
const base = "https://mblapirest.com/api/v1";

async function consultarDni(numero: string) {
  const respuesta = await fetch(`${base}/dni/${numero}`, {
    headers: { Authorization: `Bearer ${token}` },
  });
  return respuesta.json();
}

async function consultarRuc(numero: string) {
  const respuesta = await fetch(`${base}/ruc/${numero}`, {
    headers: { Authorization: `Bearer ${token}` },
  });
  return respuesta.json();
}

console.log(await consultarDni("12345678"));
console.log(await consultarRuc("20123456789"));
