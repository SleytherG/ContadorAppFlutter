import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 25);

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de Taps:', style: _estiloTexto),
              Text('$_contador', style: _estiloTexto)
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      SizedBox(width: 30),
      FloatingActionButton(onPressed: _resetContador, child: Icon(Icons.restart_alt_outlined)),
      Expanded(child: SizedBox()),
      FloatingActionButton(onPressed: _lessContador, child: Icon(Icons.remove)),
      SizedBox( width: 15.0,),
      FloatingActionButton(onPressed: _addContador, child: Icon(Icons.add)),
    ]);
  }

  void _addContador() {
    setState(() {

      _contador == 10 ? _contador = 10 : _contador++;
      // _contador++;
    });
  }

  void _lessContador() {
    setState(() {
      if ( _contador < 0 ) {
        _contador = 0;
      } else if ( _contador > 0) {
        _contador--;
      }
    });
  }

  void _resetContador() {
    setState(() {
      _contador = 0;
    });
  }
}
