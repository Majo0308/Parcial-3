import 'package:contamales_programacion/Registros/ingresos_p.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_theme.dart';
import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_widgets.dart';
import 'package:contamales_programacion/ApiService/put.dart';
import 'package:contamales_programacion/Editar/plantillaedicion.dart';

import 'package:contamales_programacion/Editar/regist.dart';

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
                              builder: (context) => Plantilla(),
                            ),
                          );
                    print('Button pressed ...');
             
                
              },
              options: FFButtonOptions(
                width: 1000,
                height: 80,
                color: Color(0xFFE7A0B5),
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Colors.pink,
                ),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 0,
                ),
                borderRadius: 0,
              ),
            ),
            FFButtonWidget(
              text:'Identificar ID',
              onPressed: () async {
                print("queso");
               Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Registros(),
                            ),
                          );
                    print('Button pressed ...');
                
              },
              options: FFButtonOptions(
                width: 1000,
                height: 80,
                color: Color(0xFFE7A0B5),
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                ),
                borderRadius: 0,
              ),
            ),
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
