// Consulta DNI y RUC — mblapirest.com
// Cargo.toml: ureq = "2"
const TOKEN: &str = "<tu_token>";
const BASE: &str = "https://mblapirest.com/api/v1";

fn consultar(ruta: &str) -> Result<String, ureq::Error> {
    let respuesta = ureq::get(&format!("{BASE}{ruta}"))
        .set("Authorization", &format!("Bearer {TOKEN}"))
        .call()?;
    Ok(respuesta.into_string()?)
}

fn main() {
    println!("{}", consultar("/dni/12345678").unwrap());
    println!("{}", consultar("/ruc/20123456789").unwrap());
}
