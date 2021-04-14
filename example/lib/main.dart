import 'package:flutter/material.dart';
import 'package:arg_dni_validator/arg_dni_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DNI validator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'DNI validator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ArgValidator validator = ArgValidator();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                      validator: (value) {
                        if (!validator.isValidDNI(value)) {
                          return 'DNI is not valid!';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(hintText: 'Enter DNI')),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('DNI is valid!'),
                        backgroundColor: Colors.green));
                  }
                },
                child: const Text('Validate DNI'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
