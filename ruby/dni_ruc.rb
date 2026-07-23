# Consulta DNI y RUC — mblapirest.com
require "net/http"
require "uri"

TOKEN = "<tu_token>"
BASE = "https://mblapirest.com/api/v1"

def consultar(ruta)
  uri = URI("#{BASE}#{ruta}")
  peticion = Net::HTTP::Get.new(uri)
  peticion["Authorization"] = "Bearer #{TOKEN}"

  Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
    http.request(peticion).body
  end
end

puts consultar("/dni/12345678")
puts consultar("/ruc/20123456789")
