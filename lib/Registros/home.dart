import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:contamales_programacion/main.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_widgets.dart';

import 'package:contamales_programacion/inicio.dart';
class GastosE extends StatelessWidget {
  const GastosE(
    
      {Key key,
      this.id,
      this.tipo,
      this.etiqueta,
      this.descripcion,
      this.monto})
      : super(key: key);
  final int id;
  final int tipo;
  final String etiqueta;
  final String descripcion;
  final int monto;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ingresos"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: ListView(
          shrinkWrap: true,
          children: [
            
              FFButtonWidget(
              text:'Editar',
              onPressed: () async {
                print("queso");
                
                Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePageWidget(),
                            ),
                          );
                    print('Button pressed ...');
             
                
              },),
              
          ],
        ),
      ),
    );
    
  }
}

class Relevancia_get extends StatefulWidget {
  const Relevancia_get({Key key}) : super(key: key);

  @override
  _Relevancia_getState createState() => _Relevancia_getState();
}

class _Relevancia_getState extends State<Relevancia_get> {
  

  bool vacio = false;
  int lim = 100;
  @override
  Widget build(BuildContext context) {
    
  }
}
