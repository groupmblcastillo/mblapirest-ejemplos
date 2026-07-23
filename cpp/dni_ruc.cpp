// Consulta DNI y RUC — mblapirest.com
// Compilar con libcurl: g++ dni_ruc.cpp -lcurl -o dni_ruc
#include <curl/curl.h>
#include <iostream>
#include <string>

static void consultar(const std::string &ruta) {
    CURL *curl = curl_easy_init();
    if (!curl) return;

    std::string url = "https://mblapirest.com/api/v1" + ruta;

    struct curl_slist *headers = nullptr;
    headers = curl_slist_append(headers, "Authorization: Bearer <tu_token>");

    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
    curl_easy_perform(curl);

    curl_slist_free_all(headers);
    curl_easy_cleanup(curl);
}

int main() {
    consultar("/dni/12345678");
    consultar("/ruc/20123456789");
    return 0;
}
