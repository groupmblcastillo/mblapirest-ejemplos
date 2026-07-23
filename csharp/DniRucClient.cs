// Consulta DNI y RUC — mblapirest.com
using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

class DniRucClient
{
    private const string Token = "<tu_token>";
    private const string Base = "https://mblapirest.com/api/v1";

    static async Task<string> Consultar(HttpClient cliente, string ruta)
    {
        var respuesta = await cliente.GetAsync($"{Base}{ruta}");
        return await respuesta.Content.ReadAsStringAsync();
    }

    static async Task Main()
    {
        using var cliente = new HttpClient();
        cliente.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Token);

        Console.WriteLine(await Consultar(cliente, "/dni/12345678"));
        Console.WriteLine(await Consultar(cliente, "/ruc/20123456789"));
    }
}
