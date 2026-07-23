/* Consulta DNI y RUC — mblapirest.com
 * Compilar con libcurl: gcc dni_ruc.c -lcurl -o dni_ruc
 */
#include <stdio.h>
#include <curl/curl.h>

static void consultar(const char *ruta) {
    CURL *curl = curl_easy_init();
    if (!curl) return;

    char url[256];
    snprintf(url, sizeof(url), "https://mblapirest.com/api/v1%s", ruta);

    struct curl_slist *headers = NULL;
    headers = curl_slist_append(headers, "Authorization: Bearer <tu_token>");

    curl_easy_setopt(curl, CURLOPT_URL, url);
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
    curl_easy_perform(curl);

    curl_slist_free_all(headers);
    curl_easy_cleanup(curl);
}

int main(void) {
    consultar("/dni/12345678");
    consultar("/ruc/20123456789");
    return 0;
}
