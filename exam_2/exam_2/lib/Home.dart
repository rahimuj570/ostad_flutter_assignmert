import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employee", style: TextStyle(fontSize: 25)),
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hint: Text("Name"),
                      label: Text('Name'),
                    ),
                    validator: (value) {
                      return value!.isEmpty ? "Must Input Name" : null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hint: Text("Age"),
                      label: Text('Age'),
                    ),
                    validator: (value) {
                      return value!.isEmpty ? "Must Input Age" : null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hint: Text("Salary"),
                      label: Text('Salary'),
                    ),
                    validator: (value) {
                      return value!.isEmpty ? "Must Input Salary" : null;
                    },
                  ),
                  SizedBox(height: 18),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Employee Added")),
                        );
                      }
                    },
                    child: Text('Add Employee'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
