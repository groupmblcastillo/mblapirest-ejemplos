// Consulta DNI y RUC — mblapirest.com
import Foundation

let token = "<tu_token>"
let base = "https://mblapirest.com/api/v1"

func consultar(_ ruta: String) async throws -> String {
    var peticion = URLRequest(url: URL(string: base + ruta)!)
    peticion.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")

    let (datos, _) = try await URLSession.shared.data(for: peticion)
    return String(data: datos, encoding: .utf8) ?? ""
}

Task {
    print(try await consultar("/dni/12345678"))
    print(try await consultar("/ruc/20123456789"))
}
