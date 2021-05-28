import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro Carrasco'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black,
                Colors.black87,
              ],
            ),
          ),
        ),
      ), //AppBar
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              _crearCard1(),
              SizedBox(
                height: 10,
              ),
              _crearInput1(),
              SizedBox(
                height: 10,
              ),
              _crearInput2(),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.indigo,
                child: Text(
                  'Enviar',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearInput1() {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Correo Electronico',
            icon: Icon(
              Icons.email,
              color: Colors.brown,
            ),
            hintText: 'Correo Electronico'),
      ),
    );
  }

  Widget _crearInput2() {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Contraseña',
            icon: Icon(
              Icons.https,
              color: Colors.brown,
            ),
            hintText: 'Contraseña'),
      ),
    );
  }

  Widget _crearCard1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              child: FadeInImage(
                placeholder: AssetImage('assets/burger1.jpg'),
                image: NetworkImage('https://i.pinimg.com/originals/2b/3d/c2/2b3dc2762f066863c9f431456764e5f6.gif'),
              ),
            ),
          ],
        ),
      ),
    );
  }
} // Second page
