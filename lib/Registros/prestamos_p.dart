import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_icon_button.dart';
import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_theme.dart';
import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:contamales_programacion/ApiService/get.dart';
import 'package:contamales_programacion/ApiService/post.dart';

class PrestamosR extends StatefulWidget {
  PrestamosR({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<PrestamosR> {
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
        backgroundColor: Color(0xFFE7678E),
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
                  'https://d3t4nwcgmfrp9x.cloudfront.net/upload/cambiar-prestamo-banco-ahorrar-intereses.jpg',
                  width: 1000,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: AlignmentDirectional(-0.61, -0.8),
                  
                ),],),
            Container(
              padding: const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
            //decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/fondito2.jpg'), 
              //fit: BoxFit.cover,
            //)),
            color: Colors.white,
            child:Container(
            width: 500, 
            //padding: EdgeInsets.only(top:10, left: 10, right:10, bottom:10),
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
                      'Motivo',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontFamily: 'Poppins',color: Color(0xFFE7678E), fontSize: 15, fontWeight: FontWeight.bold),
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
                          hintText: 'Ingrese motivo',
                          fillColor: Color(0xFF612ED5),
                          enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE7678E),
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
                      style: const TextStyle(fontFamily: 'Poppins',color: Color(0xFFE7678E), fontSize: 15, fontWeight: FontWeight.bold),
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
                        fillColor: Color(0xFF612ED5),
                        enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE7678E),
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
                      
                      'Descripci??n: ',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Color(0xFFE7678E), fontSize: 15, fontWeight: FontWeight.bold),
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
                                      color: Color(0xFFE7678E),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                        hintText: 'Ingrese Descripci??n'
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
                  int tipo=2;
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
                color: Color(0xFFE7678E),
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
