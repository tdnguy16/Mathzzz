import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'random_number.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Number place value',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  var x = 0;
  var thousand = '';
  var hundred = '';
  var ten = '';
  var one = '';
  var thousand1 = '';
  var hundred1 = '';
  var ten1 = '';
  var one1 = '';
  var thousand2 = '';
  var hundred2 = '';
  var ten2 = '';
  var one2 = '';
  var thousand3 = '';
  var hundred3 = '';
  var ten3 = '';
  var one3 = '';
  var thousand4 = '';
  var hundred4 = '';
  var ten4 = '';
  var one4 = '';

  void _random() {
    random(min, max){
      var rn = new Random();
      return min + rn.nextInt(max - min);
    }
    return x = random(1000,9999); // Output : 19, 6, 15..
  }

  void _reset() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: Duration.zero,
        pageBuilder: (_, __, ___) => MyApp(),
      ),
    );
  }

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
              ],
            ),
            title: const Text('Number brakedown'),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _random();
                        setState(() {
                          thousand = x.toString().substring(0,1);
                          hundred = x.toString().substring(1,2);
                          ten = x.toString().substring(2,3);
                          one = x.toString().substring(3,4);
                        });
                      },
                      child: Text('Click for a number'),
                  ),
                ],
              ),
              SafeArea(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 4,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          thousand1 = thousand;
                          hundred1 = '0';
                          ten1 = '0';
                          one1 = '0';
                        });
                      },
                      child: Text(thousand),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          textStyle:
                          const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          hundred2 = hundred;
                          ten2 = '0';
                          one2 = '0';
                        });
                      },
                      child: Text(hundred),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          textStyle:
                          const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ten3 = ten;
                          one3 = '0';
                        });
                      },
                      child: Text(ten),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          textStyle:
                          const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          one4 = one;
                        });
                      },
                      child: Text(one),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          textStyle:
                          const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                      ),
                    ),
                    // THOUSAND
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Center(
                          child: Text(
                            thousand1,
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: Text(
                          hundred1,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: Text(
                          ten1,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: Text(
                          one1,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      color: Colors.teal[100],
                    ),
                    //HUNDRED
                    Container(
                      padding: const EdgeInsets.all(2),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: Text(
                          hundred2,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: Text(
                          ten2,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: Text(
                          one2,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      color: Colors.teal[200],
                    ),
                    //TEN
                    Container(
                      padding: const EdgeInsets.all(2),
                      color: Colors.teal[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      color: Colors.teal[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: Text(
                          ten3,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      color: Colors.teal[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: Text(
                          one3,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      color: Colors.teal[300],
                    ),
                    //ONE
                    Container(
                      padding: const EdgeInsets.all(2),
                      color: Colors.teal[400],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      color: Colors.teal[400],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      color: Colors.teal[400],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: Text(
                          one4,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      color: Colors.teal[400],
                    ),
                    FloatingActionButton(
                      onPressed: _reset,
                      child: Text('Again'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
