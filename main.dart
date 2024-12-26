import 'package:flutter/material.dart';
import 'database_helper.dart';

void main() {
  runApp(MaterialApp(
    home: CalculatorPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HistoryScreen()),
              );
            },
          ),
        ],
      ),
      body: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  String? method;
  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();
  String answer = '';
  DatabaseHelper dbHelper = DatabaseHelper.instance;
  List<String> list = <String>['Addition', 'Subtraction', 'Multiplication', 'Division'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Calculation of two Numbers',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: first,
              decoration: InputDecoration(
                hintText: 'Enter First Number',
                labelText: 'First Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: second,
              decoration: InputDecoration(
                hintText: 'Enter Second Number',
                labelText: 'Second Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Choose your Method:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              hint: Text('Select Method'),
              value: method,
              onChanged: (String? value) {
                setState(() {
                  method = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculate();
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              answer,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void calculate() async {
    var a = double.tryParse(first.text) ?? 0.0;
    var b = double.tryParse(second.text) ?? 0.0;
    double result;

    switch (method) {
      case 'Addition':
        result = a + b;
        break;
      case 'Subtraction':
        result = a - b;
        break;
      case 'Multiplication':
        result = a * b;
        break;
      case 'Division':
        result = b != 0 ? a / b : double.infinity;
        break;
      default:
        result = 0.0;
        break;
    }

    setState(() {
      answer = 'Result: $result';
    });

    String actionSign = '';
    switch (method) {
      case 'Addition':
        actionSign = '+';
        break;
      case 'Subtraction':
        actionSign = '-';
        break;
      case 'Multiplication':
        actionSign = '*';
        break;
      case 'Division':
        actionSign = '/';
        break;
      default:
        actionSign = '';
        break;
    }

    String entry = '$a $actionSign $b = $result';
    int id = await dbHelper.insertEntry(entry);
    print('Inserted entry with ID: $id');
  }
}

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: DatabaseHelper.instance.getEntries(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                String entry =
                snapshot.data![index][DatabaseHelper.columnEntry];
                return ListTile(
                  title: Text(entry),
                );
              },
            );
          }
        },
      ),
    );
  }
}