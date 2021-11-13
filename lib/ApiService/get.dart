// ignore_for_file: camel_case_types
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class ServiceApi {
  static Future<Map> postCreateRegistro(int tipo, String etiqueta, String descripcion, int monto) async {
    String url = 'https://contamales.azurewebsites.net/api/Registros';
    Response response = await post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"tipo": tipo, "etiqueta": etiqueta, "descripcion":descripcion, "monto": monto}),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      print("Sirvio");
      return jsonDecode(response.body);
    }
    throw Exception(
        "Error llamando API - Sttus " + response.statusCode.toString());
  }


}
class InformacionEventoWidget extends StatelessWidget {
  const InformacionEventoWidget(
      {Key key,
      this.tipo,
      this.etiqueta,
      this.descripcion,
      this.monto})
      : super(key: key);
  final int tipo;
  final String etiqueta;
  final String descripcion;
  final int monto;
  /*"id": 0,
  "tipo": 0,
  "etiqueta": "string",
  "descripcion": "string",
  "monto": 0*/

  @override
  Widget build(BuildContext context) {
    return ListView(
      
      padding: const EdgeInsets.only(left: 20, right: 20),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Padding(
          
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            alignment: Alignment.center,
            color: Colors.orange,
            width: 300,
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.all(0.0),
            child: Text(tipo.toString()),
          ),
        ),
        Container(
          color: Colors.amber,
          alignment: Alignment.center,
          width: 300,
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(0.0),
          child: Text(etiqueta),
        ),
        Container(
          color: Colors.amber[300],
          alignment: Alignment.center,
          width: 300,
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(0.0),
          child: Text(descripcion),
        ),
        Container(
          color: Colors.amber[100],
          alignment: Alignment.center,
          width: 300,
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(0.0),
          child: Text(monto.toString()),
        ),
      ],
    );
  }
}



  
