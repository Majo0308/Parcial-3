import 'package:contamales_programacion/Editar/edit_ingresos.dart';
import 'package:contamales_programacion/Historiales/gastos.dart';
import 'package:contamales_programacion/Historiales/navdrawer.dart';
import 'package:contamales_programacion/Historiales/prestamos.dart';
import 'package:contamales_programacion/Registros/gastos_p.dart';
import 'package:contamales_programacion/Registros/ingresos_p.dart';
import 'package:contamales_programacion/Registros/prestamos_p.dart';
import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_widgets.dart';
import 'package:contamales_programacion/flutter_flow/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  bool _loadingButton4 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE794AD),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      drawer: NavDrawer(
      
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.network(
              'https://www.eluniverso.com/resizer/1v_Wb5eFxDNHqEiqoBDVX2dde7I=/955x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/K2KNZUPWQZAQBEITBF5QCLT3GA.jpg',
              width: 1000,
              height: 300,
              fit: BoxFit.cover,
            ),
            FFButtonWidget(
              onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GastosR(),
                            ),
                          );
                    print('Button pressed ...');

              },
              text: 'Gastos',
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
              //loading: _loadingButton1,
            ),
            FFButtonWidget(
              onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => IngresosR(),
                            ),
                          );
                    print('Button pressed ...');
              },
              text: 'Ingreso',
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
              //loading: _loadingButton2,
            ),
            FFButtonWidget(
              onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrestamosR(),
                            ),
                          );
                    print('Button pressed ...');
              },
              text: 'Préstamo',
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
              //loading: _loadingButton3,
            ),
            FFButtonWidget(
             onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrestamosR(),
                            ),
                          );
                    print('Button pressed ...');
              },
              text: 'Editar',
              options: FFButtonOptions(
                width: 1000,
                height: 80,
                color: Color(0xFFE85280),
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
              //loading: _loadingButton4,
            )
          ],
        ),
      ),
    );
  }
}
