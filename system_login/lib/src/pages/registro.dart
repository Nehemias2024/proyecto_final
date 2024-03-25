import 'package:flutter/material.dart';
import 'package:system_login/src/app.dart';
import 'package:system_login/src/pages/menu.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _MyappFormState();
}

class _MyappFormState extends State<Registro> {
  late String _nombre;
  // late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.00, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/bcp.jpg'),
              ),
              Divider(
                height: 30.0,
                color: Colors.amber[100],
              ),
              Text(
                'Registro del usuario',
                style: TextStyle(
                    fontFamily: 'TiltNeon',
                    fontSize: 50.00,
                    color: Colors.blueGrey),
              ),
              SizedBox(
                width: 200.0,
                height: 60.0,
                child: Divider(color: Colors.amber[100]),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'Ingrese su usuario',
                    labelText: 'Nombre de usuario',
                    suffixIcon: Icon(
                      Icons.verified_user,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _nombre = valor;
                  print(_nombre);
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Escriba su contraseña",
                    labelText: "Tu contraseña",
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.00),
                    )),
                onSubmitted: (valor) {
                  _password = valor;
                  print(_password);
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Confirme su contraseña",
                    labelText: "Confirmar",
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.00),
                    )),
                onSubmitted: (valor) {
                  _password = valor;
                  print(_password);
                },
              ),
              Divider(
                height: 18.0,
              ),
              SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  backgroundColor: Colors.lightBlue,
                  child: Text(
                    'Ingresar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: 'TiltNeon',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  },
                ),
              ),
              Divider(
                height: 140.0,
                color: Colors.amber[100],
              ),
              Container(
                  alignment: Alignment.center,
                  width: 400,
                  height: 50,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Text(
                        "Tu banco de siempre copyright 2024",
                        style: TextStyle(color: Colors.white),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.lightBlue,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily: 'TiltNeon',
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyappForm()),
                          );
                        },
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}

// class Menu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Pagina menú"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text("Regresar"),
//         ),
//       ),
//     );
//   }
// }
