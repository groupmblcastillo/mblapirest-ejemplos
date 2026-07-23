<div align="center">

# Ejemplos de integración — mblapirest

API peruana de consulta de DNI/RUC, tipo de cambio SUNAT y validación de comprobantes electrónicos (CPE).

[![API](https://img.shields.io/badge/API-mblapirest.com-1b2430?style=flat-square)](https://mblapirest.com)
[![Docs](https://img.shields.io/badge/docs-doc.mblapirest.com-c9971f?style=flat-square)](https://doc.mblapirest.com)
[![Lenguajes](https://img.shields.io/badge/lenguajes-15-2f7a4f?style=flat-square)](#lenguajes-disponibles)
[![Licencia](https://img.shields.io/badge/licencia-MIT-8b93a3?style=flat-square)](LICENSE)

[Documentación](https://doc.mblapirest.com) · [Crear cuenta gratis](https://mblapirest.com/api/registro) · [Soporte](#soporte)

</div>

---

## Contenido

- [Autenticación](#autenticación)
- [Endpoints cubiertos](#endpoints-cubiertos-aquí)
- [Lenguajes disponibles](#lenguajes-disponibles)
- [Soporte](#soporte)

## Autenticación

Todas las peticiones llevan tu token en la cabecera `Authorization`:

```
Authorization: Bearer <tu_token>
```

Obtienes tu token al crear tu cuenta en el panel (`Mi cuenta` → `Token de API`). Puedes regenerarlo en cualquier momento si se te compromete.

## Endpoints cubiertos aquí

| Servicio | Método | Endpoint | Cuerpo (form-urlencoded) |
|---|---|---|---|
| Consulta DNI | `GET` | `/v1/dni/{numero}` | — |
| Consulta RUC | `GET` | `/v1/ruc/{numero}` | — |
| Tipo de cambio | `POST` | `/v1/tipo-de-cambio` | `fecha=YYYY-MM-DD` |
| Validar comprobante | `POST` | `/v1/cpe/validar` | `ruc, document_type, serie, numero, fecha, monto` |

Base URL: `https://mblapirest.com/api`

## Lenguajes disponibles

`curl/`, `php/`, `python/` y `node/` traen los 4 endpoints de la tabla completos. El resto trae consulta de DNI y RUC —los dos servicios más usados— para que arranques rápido en tu lenguaje preferido.

| Lenguaje | Carpeta | Cliente HTTP usado |
|---|---|---|
| cURL | [`curl/`](curl/) | — |
| PHP | [`php/`](php/) | cURL |
| Python | [`python/`](python/) | `requests` |
| Node.js | [`node/`](node/) | `fetch` |
| TypeScript | [`typescript/`](typescript/) | `fetch` |
| Java | [`java/`](java/) | `java.net.http` |
| C# | [`csharp/`](csharp/) | `HttpClient` |
| Go | [`go/`](go/) | `net/http` |
| Ruby | [`ruby/`](ruby/) | `net/http` |
| Swift | [`swift/`](swift/) | `URLSession` |
| Kotlin | [`kotlin/`](kotlin/) | `java.net.http` |
| Rust | [`rust/`](rust/) | `ureq` |
| Dart | [`dart/`](dart/) | paquete `http` |
| C | [`c/`](c/) | libcurl |
| C++ | [`cpp/`](cpp/) | libcurl |
| PowerShell | [`powershell/`](powershell/) | `Invoke-RestMethod` |

## Soporte

Atención las 24 horas, los 365 días del año.

| Canal | Contacto |
|---|---|
| WhatsApp | [+51 939 395 740](https://api.whatsapp.com/send?phone=51939395740&text=Hola%20deseo%20informaci%C3%B3n%20del%20servicio%20de%20facturaci%C3%B3n%20electr%C3%B3nica:) |
| Soporte | soporte@mblsoftware.com |
| Ventas | ventas@mblsoftware.com |
| Desarrollo | developer@mblsoftware.com |

---

<div align="center">

Hecho por [MBL Software](https://mblsoftware.com)

</div>
