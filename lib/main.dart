import 'package:flutter/material.dart';

class HelloStateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HelloState()
  }
}

class _HelloState extends State<HelloStateful>{

  int variable_estado = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hope Starwars Stateful"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("Cambio de la variable de estado: ", style: TextStyle(fontSize:  28, color: Colors.deepPurpleAccent),),
            Text('$variable_estado',
              style: TextStyle(fontSize: 40, color: Colors.deepOrange),)
          ],
        ),
      ),
      floatingActionButton: _crea_botones(),
    );
  }

  Widget _crea_botones(){
    return Row(
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(child: Icon(Icons.exposure_zero_rounded), onPressed: funcion_zero)
      //boton para incrementar de 1 en 1
        // boton para decrementar de 1 en 1
        // boton para incremento aleatorio
        // boton para regresar a -1
      ],
    );
  }

  void funcion_zero(){
    setState(() {
      variable_estado = 0;
    });
  }
}

class HelloStateless extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        height: 400,
        width: 300,
        child: Center(
          child: Text(
            "Flutter Rules!",
                style: TextStyle(
              fontSize: 40.0, color: Colors.white70, fontFamily: 'Arial'
          ),
          ),
        )
      ),
    );
  }
}

void main() {
  runApp(
      MaterialApp(
        title: "Hope: starwars app",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: HelloStateful(),
        ),
      )
  );
}