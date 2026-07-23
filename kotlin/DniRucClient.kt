// Consulta DNI y RUC — mblapirest.com
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse

const val TOKEN = "<tu_token>"
const val BASE = "https://mblapirest.com/api/v1"

fun consultar(ruta: String): String {
    val cliente = HttpClient.newHttpClient()
    val peticion = HttpRequest.newBuilder()
        .uri(URI.create("$BASE$ruta"))
        .header("Authorization", "Bearer $TOKEN")
        .GET()
        .build()
    return cliente.send(peticion, HttpResponse.BodyHandlers.ofString()).body()
}

fun main() {
    println(consultar("/dni/12345678"))
    println(consultar("/ruc/20123456789"))
}
