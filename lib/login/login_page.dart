import 'package:FastiFood/login/UI/custominput_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loginstate = true;
  bool _checkstate = false;

  void _loginState(bool state) {
    setState(() {
      _loginstate = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  (_loginstate) ? 'Inicio de Sesión' : 'Registrarse',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Stack(
                  children: [
                    AnimatedContainer(
                      duration: Duration(
                        milliseconds: 300,
                      ),
                      height: (_loginstate) ? 425.0 : 575.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(15),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        top: 170.0,
                        bottom: 30.0,
                      ),
                      child: (_loginstate) ? _loginWidget() : _registerWidget(),
                    ),
                    Container(
                      child: Image.asset("assets/images/plato2.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _loginWidget() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Form(
            child: Column(
              children: [
                CustomInputField(new Icon(Icons.person), "Usuario"),
                SizedBox(height: 20.0),
                CustomInputField(new Icon(Icons.lock), "Contraseña"),
                SizedBox(height: 20.0),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Ingresar",
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "No estas Registrado? ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _loginState(false);
                },
                child: Text(
                  "Click Aqui",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _registerWidget() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomInputField(new Icon(Icons.alternate_email), "Email"),
          SizedBox(height: 20.0),
          CustomInputField(new Icon(Icons.person), "Usuario"),
          SizedBox(height: 20.0),
          CustomInputField(new Icon(Icons.lock), "Contraseña"),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _checkstate,
                onChanged: (bool value) {
                  setState(() {
                    _checkstate = value;
                  });
                },
              ),
              Text(
                "Acepto Terminos y Condiciones.",
                style: TextStyle(
                  color: (!_checkstate) ? Colors.red : Colors.blue,
                ),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () {
              _loginState(false);
            },
            color: Colors.deepOrange,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Registrar",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45.0,
                child: Image.asset("assets/images/googlelogo.png"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("O"),
              ),
              Container(
                height: 45.0,
                child: Image.asset("assets/images/facebooklogo.png"),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Ya estas Registrado? ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _loginState(true);
                },
                child: Text(
                  "Click Aqui",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
