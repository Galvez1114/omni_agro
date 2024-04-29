import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:omni_agro/controllers/login_controller.dart';
import 'package:omni_agro/environment/colores.dart';
import 'package:omni_agro/environment/fuente.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Colores colores = new Colores();
    Fuente fuente = new Fuente();
    LoginController controller = new LoginController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/fondo.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.darken))),
        child: Column(children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textOMNI(colores, fuente),
                  logoOMNI(),
                  textAGRO(colores, fuente),
                ],
              ),
            ),
          ),
          textFieldUser(context, controller, colores),
          textFieldPassword(context, controller, colores),
          btnIniciarSesion(context, colores),
          textoRecuperar(context, colores),
          textoCrearCuenta(context, colores),
        ]),
      ),
    );
  }

  Container textoRecuperar(BuildContext context, Colores colores) {
    return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("¿Olvidaste tu contraseña?",
                style: TextStyle(color: colores.textoBlanco)),
            GestureDetector(
              onTap: () {
                //Codigo
              },
              child: Text(
                " Recuperar aqui",
                style: TextStyle(
                  color: colores.textoVerde,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ));
  }

  Container btnIniciarSesion(BuildContext context, Colores colores) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.14,
              right: MediaQuery.of(context).size.width * 0.14,
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.01),
          backgroundColor: colores.colorPrimario,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed("homePage");
        },
        child: Text(
          "INICIAR SESION",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.06,
              color: colores.textoBlanco),
        ),
      ),
    );
  }

  Container textFieldUser(
      BuildContext context, LoginController controller, Colores colores) {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.13,
          right: MediaQuery.of(context).size.width * 0.13,
          top: MediaQuery.of(context).size.height * 0.13),
      child: TextField(
        controller: controller.user,
        style: TextStyle(color: colores.textoBlanco),
        decoration: InputDecoration(
            hintText: "Usuario",
            hintStyle: TextStyle(color: colores.textoBlancoTransparente),
            suffixIcon: Icon(Icons.person),
            suffixIconColor: colores.textoBlancoTransparente,
            filled: true,
            fillColor: colores.textFieldLogin,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  Text textAGRO(Colores colores, Fuente fuente) {
    return Text(
      "AGRO",
      style: TextStyle(
          color: colores.textoVerde,
          fontSize: fuente.fuenteTitulo,
          fontWeight: FontWeight.bold),
    );
  }

  CircleAvatar logoOMNI() {
    return CircleAvatar(
      backgroundImage: AssetImage("img/logo1.png"),
      backgroundColor: Colors.transparent,
      radius: 30,
    );
  }

  Text textOMNI(Colores colores, Fuente fuente) {
    return Text(
      "OMNI",
      style: TextStyle(
          color: colores.textoBlanco,
          fontSize: fuente.fuenteTitulo,
          fontWeight: FontWeight.bold),
    );
  }

  textFieldPassword(
      BuildContext context, LoginController controller, Colores colores) {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.13,
          right: MediaQuery.of(context).size.width * 0.13,
          top: 20),
      child: TextField(
        controller: controller.pass,
        obscureText: true,
        style: TextStyle(color: colores.textoBlanco),
        decoration: InputDecoration(
            hintText: "Contraseña",
            hintStyle: TextStyle(color: colores.textoBlancoTransparente),
            suffixIcon: Icon(Icons.password),
            suffixIconColor: colores.textoBlancoTransparente,
            filled: true,
            fillColor: colores.textFieldLogin,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  textoCrearCuenta(BuildContext context, Colores colores) {
    return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("¿No tienes cuenta?",
                style: TextStyle(color: colores.textoBlanco)),
            GestureDetector(
              onTap: () {
                //Codigo
              },
              child: Text(
                " Crea una aqui",
                style: TextStyle(
                  color: colores.textoVerde,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ));
  }
}
