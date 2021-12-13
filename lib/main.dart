import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

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
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 4,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text(myController.text.substring(0,1)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text(myController.text.substring(1,2)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text(myController.text.substring(2,3)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text(myController.text.substring(3,4)),
                  ),
                  // THOUSAND
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Center(child: Text(myController.text.substring(0,1))),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[100],
                  ),
                  //HUNDRED
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Text(myController.text.substring(1,2)),
                    color: Colors.teal[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[200],
                  ),
                  //TEN
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Text(myController.text.substring(2,3)),
                    color: Colors.teal[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[300],
                  ),
                  //ONE
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[400],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[400],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('images/0.png'),
                    color: Colors.teal[400],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Text(myController.text.substring(3,4)),
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
