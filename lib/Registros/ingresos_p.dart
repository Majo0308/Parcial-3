import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_icon_button.dart';
import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_theme.dart';
import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:contamales_programacion/ApiService/get.dart';
import 'package:contamales_programacion/ApiService/post.dart';

class IngresosR extends StatefulWidget {
  IngresosR({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<IngresosR> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE794AD),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: 
        
        ListView(
          children: [
            Stack(
              children: [
                
                Image.network(
                  'http://c.files.bbci.co.uk/16F6C/production/_100406049_1.jpg',
                  width: 1000,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: AlignmentDirectional(-0.61, -0.8),
                ),],),
            Container(
              padding: const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
            color: Colors.white,
            child:Container(
            width: 500, 
            child: ListView(
              
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [

                Padding(padding: new EdgeInsets.all(20.0)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(                
                      'Tipo de ingreso',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontFamily: 'Poppins',color: Color(0xFFE794AD), fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 250,
                      child: TextFormField(
                         controller: controllerEtiqueta,
                         style: TextStyle(color: Colors.blueGrey),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: new EdgeInsets.all(10.0),
                          hintText: 'Ingrese tipo de ingreso',
                          fillColor: Color(0xFF612ED5),
                          enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE794AD),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                        ),
                      ),
                    ),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(   
                                   
                      'Monto',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontFamily: 'Poppins',color: Color(0xFFE57D9D), fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 250,
                      child: TextFormField(
                        controller: controllerMonto,
                        style: TextStyle(color: Colors.blueGrey),
                        decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: new EdgeInsets.all(10.0),
                        hintText: 'Ingrese Monto',
                        fillColor: Color(0xFFE57D9D),
                        enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE57D9D),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                        ),
                      ),
                    ),
                  ],),
                ),
                Row(
                  children:[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      
                      'Descripción: ',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Color(0xFFE57D9D), fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 250,
                    height: 100,
                    child: TextField(
                      controller: controllerDescripcion,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: new EdgeInsets.all(10.0),
                        enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE57D9D),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                        hintText: 'Ingrese Descripción'
                      ),
                    ),
                  ),
                ),
                  ],),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                  ),
              FFButtonWidget(
              onPressed: () async {
                  int tipo=1;
                  String etiqueta = controllerEtiqueta.text;
                  int monto =  int.parse(controllerMonto.text);
                  String descripcion = controllerDescripcion.text;

                  Map datos = await ServiceApi.postCreateRegistro(
                      tipo, etiqueta, descripcion, monto);
              },
              text: 'Ingresar Gasto',
              options: FFButtonOptions(
                width: 1000,
                height: 80,
                color: Color(0xFFE57D9D),
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
              //loading: _loadingButton1,
            ),
              ],
            )
          ),
        ),
              
            
          ],
        ),
      ),
    );
  }
}
