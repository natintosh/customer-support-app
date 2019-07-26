import 'package:flutter/material.dart';

class ComplainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Complain'),
          centerTitle: true,
        ),
        body: _ComplainPageContent());
  }
}

class _ComplainPageContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ComplainPageContentState();
}

class _ComplainPageContentState extends State<_ComplainPageContent> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Enter your full name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter your phone number'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Enter your email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 4,
              decoration: InputDecoration(labelText: 'Enter full description'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration:
                  InputDecoration(labelText: 'Enter your ticket number'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<int>(
              hint: Text('Select Department'),
              value: _value,
              items: [
                DropdownMenuItem<int>(
                  value: 1,
                  child: Text('Marketing'),
                ),
                DropdownMenuItem<int>(
                  value: 2,
                  child: Text('Engineering'),
                ),
                DropdownMenuItem<int>(
                  value: 3,
                  child: Text('Research'),
                ),
                DropdownMenuItem<int>(
                  value: 4,
                  child: Text('Development'),
                ),
                DropdownMenuItem<int>(
                  value: 5,
                  child: Text('Sales'),
                ),
              ],
              onChanged: (index) {
                setState(() {
                  _value = index;
                });
              },
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('SUBMIT'),
          )
        ],
      ),
    );
  }
}
