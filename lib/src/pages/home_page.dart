import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  final estiloTexto = TextStyle( fontSize: 25);

  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Clicks:', style: estiloTexto),
            Text('$contador', style: estiloTexto)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo');
          
        },
        focusColor: Colors.green,
        autofocus: true,
      ),
    );
  }
}