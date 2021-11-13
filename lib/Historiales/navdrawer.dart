import 'package:contamales_programacion/Historiales/gastos.dart';
import 'package:contamales_programacion/Historiales/ingresos.dart';
import 'package:contamales_programacion/Registros/prestamos_p.dart';
import 'package:flutter/material.dart';
import 'package:contamales_programacion/Registros/gastos_p.dart';
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        brightness: Brightness.light,
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Side menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/03/18/10/09/mountain-4943472_1280.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.input),
              title: Text('Inicio'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Gastos'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Relevancia_get())),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ingresos'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Ingreso())),
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Préstamos'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>PrestamosR())),
            ),
            /*ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>GastosH())),
            ),*/
          ],
        ),
      ),
    );
  }
}
