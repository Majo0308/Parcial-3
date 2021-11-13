/*import 'package:contamales_programacion/Historiales/navdrawer.dart';
import 'package:flutter/material.dart';
import 'package:contamales_programacion/ApiService/get.dart';
import 'package:contamales_programacion/ApiService/post.dart';
import 'ingresos_p.dart';
import 'prestamos_p.dart';
import 'gastos_p.dart';
class Home extends StatelessWidget {

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContaMales"),
      ),
      drawer: NavDrawer(),
      backgroundColor: Color(0xFFB834E0),
      body: Center(
        widthFactor: 200.0,
        child:Column(
        children: [
          Container(
            width: 1000.0,
            height: 300,
                        
            decoration: new BoxDecoration( 
            
            ),/*
              image: new DecorationImage(fit: BoxFit.fill, image: NetworkImage('https://w0.peakpx.com/wallpaper/416/130/HD-wallpaper-ajolote-xd.jpg'),),
          ),*/),
          Padding(
  padding: EdgeInsetsDirectional.fromSTEB(0, 27, 0, 0),
  child: Container(
    width: double.infinity,
    height: 52,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            
            child: Icon(
              Icons.search,
              color: Colors.grey,
              size: 24,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 2),
              child: TextFormField(

                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Search artist, maker, department...',
                 
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                
              ),
            ),
          )
        ],
      ),
    ),
  ),
),

          
          GestureDetector(
          onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Ingresos()),
            );},
          child: Container(
            child: ClipRRect(
              borderRadius:BorderRadius.circular(0.0),
            child: Image.asset('assets/images/preview.jpg',
                width: 1000.0, height: 80.0),
            ),
            
          ),
          ),
          GestureDetector(
          onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Ingresos()),
            );},
          child: Container(
            child: ClipRRect(
              borderRadius:BorderRadius.circular(0.0),
            child: Image.asset('assets/images/preview1.jpg',
                width: 1000.0, height: 80.0),
            ),
            
          ),
          ),
          GestureDetector(
          onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page_post_data()),
            );},
          child: Container(
            child: ClipRRect(
              borderRadius:BorderRadius.circular(0.0),
            child: Image.asset('assets/images/preview2.jpg',
                width: 1000.0, height: 80.0),
            ),
            
          ),
          ),
          ]
        ),
        
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
*/