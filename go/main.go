// Consulta DNI y RUC — mblapirest.com
package main

import (
	"fmt"
	"io"
	"net/http"
)

const token = "<tu_token>"
const base = "https://mblapirest.com/api/v1"

func consultar(ruta string) (string, error) {
	peticion, err := http.NewRequest("GET", base+ruta, nil)
	if err != nil {
		return "", err
	}
	peticion.Header.Set("Authorization", "Bearer "+token)

	respuesta, err := http.DefaultClient.Do(peticion)
	if err != nil {
		return "", err
	}
	defer respuesta.Body.Close()

	cuerpo, err := io.ReadAll(respuesta.Body)
	return string(cuerpo), err
}

func main() {
	dni, _ := consultar("/dni/12345678")
	fmt.Println(dni)

	ruc, _ := consultar("/ruc/20123456789")
	fmt.Println(ruc)
}
