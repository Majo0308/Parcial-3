import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:flutter/rendering.dart';
import 'package:contamales_programacion/ApiService/get.dart';

class Page_post_data extends StatefulWidget {
  Page_post_data({Key key}) : super(key: key);

  @override
  _Page_post_dataState createState() => _Page_post_dataState();
}

class _Page_post_dataState extends State<Page_post_data> {
  Map infoDeApi = {
    'tipo': '',
    'etiqueta': '',
    'descripcion': '',
    'monto': 0,
  };

  final controllerTipo = TextEditingController();
  final controllerEtiqueta = TextEditingController();
  final controllerDescripcion = TextEditingController();
  final controllerMonto = TextEditingController();
  int _value = 0;
  int _value1 = 0;
  int categoriaNum = 0;
  int relevanciaNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("AGENDA"),
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
          children: <Widget>[
            
            Container(
              //color: Colors.grey[300],
              width: 300,
              // height: 70,
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(0.0),
              child: TextField(
                controller: controllerEtiqueta,
                decoration: InputDecoration(
                    hintText: 'ingresar etiqueta',
                    labelText: "ETIQUETA",
                    prefixIcon: Icon(Icons.book),
                    suffixIcon: IconButton(
                        onPressed: () => {controllerTipo.clear()},
                        icon: Icon(Icons.close)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
            ),
            Container(
              //color: Colors.grey[300],
              width: 300,
              // height: 70,
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(0.0),
              child: TextField(
                controller: controllerMonto,
                decoration: InputDecoration(
                    hintText: 'ingresar monto',
                    labelText: "Monto",
                    prefixIcon: Icon(Icons.book),
                    suffixIcon: IconButton(
                        onPressed: () => {controllerTipo.clear()},
                        icon: Icon(Icons.close)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
            ),
            Container(
                //color: Colors.grey[300],
                width: 300,
                // height: 70,
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(0.0),
                child: Center(
                  child: Text(
                    "RELEVANCIA",
                  ),
                )),
            Container(
              //color: Colors.grey[300],
              width: 300,
              // height: 70,
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(0.0),
              child: DropdownButtonFormField(
                alignment: Alignment.center,
                decoration: InputDecoration(
                  hintText: 'RELEVANCIA',
                  prefixIcon: Icon(Icons.event),
                  border: OutlineInputBorder(),
                ),
                value: _value1,
                items: [
                  DropdownMenuItem(
                    child: Text("IMPORTANTE"),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text("SECUNDARIO"),
                    value: 1,
                  ),
                ],
                onChanged: (int value1) {
                  setState(() {
                    _value1 = value1;
                  });
                },
              ),
            ),
            Container(
                //color: Colors.grey[300],
                width: 300,
                // height: 70,
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(0.0),
                child: Center(
                  child: Text(
                    "CATEGORIA",
                  ),
                )),
            Container(
              //color: Colors.grey[300],
              width: 300,
              // height: 70,
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(0.0),

              child: DropdownButtonFormField(
                alignment: Alignment.center,
                decoration: InputDecoration(
                  hintText: 'RELEVANCIA',
                  prefixIcon: Icon(Icons.event),
                  border: OutlineInputBorder(),
                ),
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text("PERSONAL"),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text("FAMILIAR"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("ESCOLAR"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("CUMPLEAÑOS"),
                    value: 3,
                  ),
                ],
                onChanged: (int value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
            Container(
              //color: Colors.grey[300],
              width: 300,
              // height: 70,
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(0.0),
              child: TextField(
                controller: controllerDescripcion,
                decoration: InputDecoration(
                    hintText: 'ingresar descripcion',
                    labelText: "Descipción",
                    prefixIcon: Icon(Icons.book),
                    suffixIcon: IconButton(
                        onPressed: () => {controllerTipo.clear()},
                        icon: Icon(Icons.close)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
            ),
            Container(child: Divider(height: 50,)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.pink[600],
                    onPrimary: Colors.white,
                    minimumSize: Size(200, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () async {
                  int tipo=2;
                  String etiqueta = controllerEtiqueta.text;
                  int monto =  int.parse(controllerMonto.text);
                  String descripcion = controllerDescripcion.text;

                  Map datos = await ServiceApi.postCreateRegistro(
                      tipo, etiqueta, descripcion, monto);
                },
                child: Text(
                  "insertar dato",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, color: Colors.white),
                  textScaleFactor: 1,
                ))
          ],
        ))));
  }
}
