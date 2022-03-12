import 'package:flutter/material.dart';
import 'package:test_moblle_developer/widget/create_color.dart';
import 'package:test_moblle_developer/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color color1 = HexColor("b74093");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          //fit: StackFit.expand,
          children: <Widget>[
            _colorLightPurple(),
            _colorPurple(),
            informationUser(),
          ],
        ),
      ),
    );
  }

  /**
   * colores de cacecera claro
   */
  Widget _colorLightPurple() {
    return Positioned(
      top: -240,
      right: 125,
      left: -250,
      child: Container(
        width: 400.0,
        height: 400.0,
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget _colorPurple() {
    return Positioned(
      top: -100,
      right: -100,
      left: 125,
      child: Container(
        width: 400.0,
        height: 400.0,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

/**
 * aqui se muestran en orden los input y textos de la informacion para el login 
 */
  Widget informationUser() {
    Widget size = const SizedBox(
      height: 10,
    );
    return Container(
      //olor: olors.red,
      padding: EdgeInsets.only(top: 160),
      child: Column(
        children: [
          avatarCircle(),
          size,
          _inputIdentification(),
          size,
          _inputPassword(),
          size,
          _buttonSession(),
          size,
          _forgotPassword(),
          _incription(),
        ],
      ),
    );
  }

  Widget avatarCircle() {
    return CircleAvatar(
      radius: 70.0,
      backgroundImage: const NetworkImage(
          "https://c4.wallpaperflare.com/wallpaper/6/338/323/women-face-portrait-blonde-wallpaper-preview.jpg"),
    );
  }

  Widget _inputIdentification() {
    return Container(
      height: 70,
      width: 270,
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            labelText: 'Identificación',
            suffixIcon: const Icon(Icons.perm_identity_rounded),
            prefixIcon: const Icon(Icons.person)),
        onChanged: (valueIdentification) {
          setState(() {
            //la data a verificar
          });
        },
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      height: 60,
      width: 270,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            labelText: 'Contraseña',
            suffixIcon: const Icon(Icons.lock_open_rounded),
            prefixIcon: const Icon(Icons.lock)),
        onChanged: (valuePaword) {
          setState(() {
            //la data a verificar
          });
        },
      ),
    );
  }

  Widget _buttonSession() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: OutlinedButton(
        child: Text("Iniciar"),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.purpleAccent,
          onSurface: Colors.blueAccent,
          side: BorderSide(color: Colors.purpleAccent, width: 1),
          elevation: 15,
          minimumSize: Size(150, 50),
          shadowColor: Colors.purpleAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        onPressed: () {
          //navegacion para el menu de la apliaciion, debo verificar credenciales
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
    );
  }

  Widget _forgotPassword() {
    return GestureDetector(
      child: Center(
        child: Text("Olvide mi contraseña"),
      ),
      onTap: () {
        print("presionando.. ");
      },
    );
  }

  Widget _incription() {
    return SizedBox(
      height: 150,
      child: GestureDetector(
        child: Center(
          child: Text("¿No tienes una cuenta? INCRIBIRSE"),
        ),
        onTap: () {
          //pagina de incripcion
        },
      ),
    );
  }
}
