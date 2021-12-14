import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());
  var thousand = '0';
  var hundred = '0';
  var ten = '0';
  var one = '0';
  var thousandRow = '0';
  var hundredRow = '0';
  var tenRow = '0';
  var oneRow = '0';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Number brakedown',
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

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(labelText: "Enter your number"),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                        ],
                      controller: myController,
                      ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          thousand = myController.text.substring(0,1);
                          hundred = myController.text.substring(1,2);
                          ten = myController.text.substring(2,3);
                          one = myController.text.substring(3,4);
                        });
                      },
                      child: Text('OK'))
                ],
              ),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 4,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        thousandRow = thousand;
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
                        hundredRow = hundred;
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
                        tenRow = ten;
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
                        oneRow = one;
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
                          thousandRow,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: const Center(
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: const Center(
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: const Center(
                      child: Text(
                        '0',
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
                        hundredRow,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    color: Colors.teal[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: const Center(
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    color: Colors.teal[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: const Center(
                      child: Text(
                        '0',
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
                        tenRow,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    color: Colors.teal[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: const Center(
                      child: Text(
                        '0',
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
                        oneRow,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    color: Colors.teal[400],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}
