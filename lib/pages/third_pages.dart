import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de pedidos'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black,
                Colors.black87
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _crearCard1(),
              _crearCard2()
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearCard2() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.cyan,
                Colors.black,
              ],
            )),
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'master burger',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'La master Burger lleva carne hecha al carbon con un poco de BBQ lleva se tocino, tambien lleva el pan de hamburguesa calientito y las verduras y los condimentos',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
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
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
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
} //ThirdPage
