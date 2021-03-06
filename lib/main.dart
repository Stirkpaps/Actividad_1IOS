import 'package:flutter/material.dart';

void main() => runApp(AleApp());

class AleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: EsScaffold(title: "Flutter en español Luis Stirk"),
    ); //Fin de Material
  } //Fin Widget
} //Fin AleApp

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EsScaffoldState createState() => _EsScaffoldState();
} //Fin Clase EsScaffold

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/FlutterEnEspanol.jpg',
          width: 200.0,
        ),
      ), //Fin Center
      drawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0), //fin flutter logo
          Text('Drawer 1 de Luis'),
        ] //fin de children
            ), //fin de el chil de drawer1
      ), //fin de el drawer1
      endDrawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0), //fin flutter logo
          Text('Drawer 2 de Luis'),
        ] //fin de children
            ), //fin de el chil del enddrawer2
      ), //fin del endrawer
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(size: 100.0), //fin flutter logo
                    Text('Bottom sheet 1 de Luis'),
                  ], //fin de el children
                ), //child column
              ); //fin de el contenedor(cuadro que sale)
            }, //fin del builder
          ); //fin de showmodal
        }, //fin de on pressed
      ), //finfloatingactionbutton
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 30.0,
              ),
              Text('bottomNavigationBar con BottomAppBar')
            ],
          ),
        ),
      ), //fin del navigationbar
    ); //Fin de Scaffold
  } //Fin del Widget Construir
} //Fin de de State <EsScaffold>
//programador benitez garzon