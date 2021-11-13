// ignore_for_file: camel_case_types
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



class Registros extends StatelessWidget {
  const Registros(
    
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
  @override
  Widget build(BuildContext context) {
    
    return ListView(
      
      padding: const EdgeInsets.only(left: 20, right: 20),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          
          child: ListTile(
            title: Text(etiqueta.toString()+"   "+monto.toString()),
            tileColor: Colors.pink,
            onTap: (){
              
            },
          ),
        ),
        
       
      ],
    );
  }
}

class GastosDetalle extends StatelessWidget {
  const GastosDetalle(
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
            color: Color(0xFFE85280),
            width: 300,
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.all(0.0),
            child: Text("Gasto"),
          ),
        ),
        Container(
          color: Color(0xFFE7678E),
          alignment: Alignment.center,
          width: 300,
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(0.0),
          child: Text(etiqueta),
        ),
        Container(
          color: Color(0xFFE57D9D),
          alignment: Alignment.center,
          width: 300,
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(0.0),
          child: Text(descripcion),
        ),
        Container(
          color: Color(0xFFE794AD),
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
class Relevancia_get extends StatefulWidget {
  const Relevancia_get({Key key}) : super(key: key);

  @override
  _Relevancia_getState createState() => _Relevancia_getState();
}

class _Relevancia_getState extends State<Relevancia_get> {
  List widgetsListView = [];
  int i = 0;
  final String url = "https://contamales.azurewebsites.net/api/Registros";
  Future<List<dynamic>> getData() async {
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      List<dynamic> resultados=[]; 
      for(int i=0; i<jsonData.length; i++) {
          
            resultados.add(jsonData[i]);
      }
      return resultados;
      
    } else {
      throw Exception('Error al llamar al API');
    }
  }

  bool vacio = false;
  int lim = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Gastos"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: ListView(
          shrinkWrap: true,
          children: [

            FFButtonWidget(
              text:'Generar Registros',
              onPressed: () async {
                print("queso");
               
                //Map post1= await ServiceApi.postCreateUser("si", "no");
                List<dynamic> datos = await getData();
                print("Api Sirvio");
                print(datos);
                setState(() {
                return  
                  widgetsListView = datos;
                });
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

            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: widgetsListView.length,
              itemBuilder: (BuildContext ctxt, int idx) {
                
                return GastosDetalle(
                    
                    tipo: widgetsListView[idx]["tipo"],
                    etiqueta: widgetsListView[idx]["etiqueta"],
                    descripcion: widgetsListView[idx]["descripcion"],
                    monto: widgetsListView[idx]["monto"]);
              },
            )
          ],
        ),
      ),
    );
  }
}
