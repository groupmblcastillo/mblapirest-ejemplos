# Ejemplos de integración — mblapirest

Ejemplos de código listos para copiar y adaptar, para consumir la API de
[mblapirest.com](https://mblapirest.com): consulta de DNI/RUC, tipo de cambio
SUNAT y validación de comprobantes electrónicos (CPE).

Documentación completa: https://doc.mblapirest.com
Crear una cuenta gratis: https://mblapirest.com/api/registro

## Autenticación

Todas las peticiones llevan tu token en la cabecera `Authorization`:

```
Authorization: Bearer <tu_token>
```

Obtienes tu token al crear tu cuenta en el panel (`Mi cuenta` → `Token de
API`). Puedes regenerarlo en cualquier momento si se te compromete.

## Endpoints cubiertos aquí

| Servicio | Método | Endpoint | Cuerpo (form-urlencoded) |
|---|---|---|---|
| Consulta DNI | GET | `/v1/dni/{numero}` | — |
| Consulta RUC | GET | `/v1/ruc/{numero}` | — |
| Tipo de cambio | POST | `/v1/tipo-de-cambio` | `fecha=YYYY-MM-DD` |
| Validar comprobante | POST | `/v1/cpe/validar` | `ruc, document_type, serie, numero, fecha, monto` |

Base URL: `https://mblapirest.com/api`

Cada carpeta trae ejemplos en un lenguaje distinto. `curl/`, `php/`, `python/`
y `node/` cubren los 4 endpoints de la tabla; el resto cubre consulta de
DNI y RUC (los dos servicios más usados) para que puedas arrancar en tu
lenguaje preferido:

- [`curl/`](curl/) — línea de comandos
- [`php/`](php/) — PHP con cURL
- [`python/`](python/) — Python con `requests`
- [`node/`](node/) — Node.js con `fetch`
- [`typescript/`](typescript/)
- [`java/`](java/) — `java.net.http`
- [`csharp/`](csharp/) — `HttpClient`
- [`go/`](go/)
- [`ruby/`](ruby/) — `net/http`
- [`swift/`](swift/) — `URLSession`
- [`kotlin/`](kotlin/)
- [`rust/`](rust/) — `ureq`
- [`dart/`](dart/) — paquete `http`
- [`c/`](c/) — libcurl
- [`cpp/`](cpp/) — libcurl
- [`powershell/`](powershell/) — `Invoke-RestMethod`

## Soporte

- WhatsApp: [+51 939 395 740](https://api.whatsapp.com/send?phone=51939395740&text=Hola%20deseo%20informaci%C3%B3n%20del%20servicio%20de%20facturaci%C3%B3n%20electr%C3%B3nica:)
- Soporte: soporte@mblsoftware.com
- Ventas: ventas@mblsoftware.com
- Desarrollo: developer@mblsoftware.com

Atención las 24 horas, los 365 días del año.
