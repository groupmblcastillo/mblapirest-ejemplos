// Consulta DNI y RUC — mblapirest.com
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class DniRucClient {
    private static final String TOKEN = "<tu_token>";
    private static final String BASE = "https://mblapirest.com/api/v1";

    private static String consultar(String ruta) throws Exception {
        HttpClient cliente = HttpClient.newHttpClient();
        HttpRequest peticion = HttpRequest.newBuilder()
                .uri(URI.create(BASE + ruta))
                .header("Authorization", "Bearer " + TOKEN)
                .GET()
                .build();
        HttpResponse<String> respuesta = cliente.send(peticion, HttpResponse.BodyHandlers.ofString());
        return respuesta.body();
    }

    public static void main(String[] args) throws Exception {
        System.out.println(consultar("/dni/12345678"));
        System.out.println(consultar("/ruc/20123456789"));
    }
}
