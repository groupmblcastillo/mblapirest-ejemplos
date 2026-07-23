// Consulta DNI y RUC — mblapirest.com
// pubspec.yaml: http: ^1.0.0
import 'package:http/http.dart' as http;

const token = '<tu_token>';
const base = 'https://mblapirest.com/api/v1';

Future<String> consultar(String ruta) async {
  final respuesta = await http.get(
    Uri.parse('$base$ruta'),
    headers: {'Authorization': 'Bearer $token'},
  );
  return respuesta.body;
}

void main() async {
  print(await consultar('/dni/12345678'));
  print(await consultar('/ruc/20123456789'));
}
