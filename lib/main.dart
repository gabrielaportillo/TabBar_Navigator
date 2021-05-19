import 'package:flutter/material.dart';

void main() => runApp(PortilloApp());

class PortilloApp extends StatefulWidget {
  @override
  //generando el estado de el widget
  _PortilloAppState createState() => _PortilloAppState();
} //fin de clase PortilloApp

class _PortilloAppState extends State<PortilloApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }
} //fin de clase _PortilloAppState

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} //fin de clase principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //fin de void iniState con 5 iconos

  Widget card(String text) {
    return Card(
      color: Colors.lightBlue,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //fin de tarjeta

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //fin de tab enviando texto e icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Icon Portillo"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Hey soy la tarjeta No. 1"),
          card("Holaa la tarjeta No. 2"),
          card("Que tal, soy la tarjeta No. 3"),
          card("Hi, soy la tarjeta No. 4"),
          card("Y yo soy la tarjeta No. 5"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Inicio", Icon(Icons.home)),
          tab("Ideas", Icon(Icons.lightbulb_outline)),
          tab("Compañia", Icon(Icons.atm)),
          tab("Señal", Icon(Icons.signal_wifi_off)),
          tab("Wifi", Icon(Icons.wifi)),
        ],
      ),
    ); //fin de scaffold
  } //fin de ejecutor
} //fin de principalstate