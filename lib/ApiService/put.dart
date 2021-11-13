import 'package:http/http.dart';
import 'dart:convert';
class Post{
  static Future<void> putDato(int id, int tipo, String etiqueta,
       String descripcion, int monto) async {
         final String url = "https://contamales.azurewebsites.net/api/Registros/"+id.toString();
    Response response = await put(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "id": id,
        "tipo": tipo,
        "etiqueta": etiqueta,
        "descripcion": descripcion,
        "monto": monto,

      }),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      print("Sirvio");
      return;
    }
    throw Exception(
        "Error llamando API - Status " + response.statusCode.toString());
  }}
