import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:omni_agro/environment/colores.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController nextPage = new PageController();
    PageController previousPage = new PageController();
    Colores colores = new Colores();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colores.colorPrimario,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: colores.colorMenuDrawer,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage("img/logo1.png"),
                      backgroundColor: Colors.transparent),
                  Text(
                    ' OMNI-',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'AGRO',
                    style: TextStyle(
                        color: colores.textoVerde,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image(image: AssetImage("img/semilla.png"), height: 28),
              title: Text('Semillas'),
              onTap: () {
                // Acción al seleccionar la opción 1
              },
            ),
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text('Registrar cosechas'),
              onTap: () {
                // Acción al seleccionar la opción 2
              },
            ),
            ListTile(
              leading: Icon(Icons.newspaper),
              title: Text('Noticias'),
              onTap: () {
                // Acción al seleccionar la opción 2
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/fondo.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.darken))),
      ),
    );
  }
}
