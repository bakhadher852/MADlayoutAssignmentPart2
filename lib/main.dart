import 'package:bakhadherpartone/All_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 234, 233, 233),
        appBar: AppBar(
          title: const Center(child: Text('MY HOME >')),
          bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              tabs: [
                Text('All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        decorationColor: Colors.blue,
                        decorationStyle: TextDecorationStyle.solid)),
                Text('Living',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        decorationColor: Colors.blue,
                        decorationStyle: TextDecorationStyle.solid)),
                Text('Bedroom',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        decorationColor: Colors.blue,
                        decorationStyle: TextDecorationStyle.solid)),
              ]),
        ),
        // ignore: prefer_const_constructors
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: const TabBarView(children: [
            All_Page(),
            All_Page(),
            All_Page(),
          ]),
        ),
      ),
    );
  }
}
