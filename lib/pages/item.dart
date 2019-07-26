import 'package:customer_support_app/models/complain.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Complain complain;

  const ItemPage({Key key, @required this.complain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint'),
        centerTitle: true,
      ),
      body: _ItemPageContent(
        complain: complain,
      ),
    );
  }
}

class _ItemPageContent extends StatefulWidget {
  final Complain complain;

  const _ItemPageContent({Key key, @required this.complain}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ItemPageContentState();
}

class _ItemPageContentState extends State<_ItemPageContent> {
  bool _value;

  @override
  Widget build(BuildContext context) {
    _value = widget.complain.resolved;
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Full name'),
            subtitle: Text('${widget.complain.fullName}'),
          ),
          ListTile(
            title: Text('Phone number'),
            subtitle: Text('${widget.complain.phoneNumber}'),
          ),
          ListTile(
            title: Text('Email Address'),
            subtitle: Text('${widget.complain.emailAddress}'),
          ),
          ListTile(
            title: Text('Description'),
            subtitle: Text('${widget.complain.description}'),
          ),
          ListTile(
            title: Text('Ticket Number'),
            subtitle: Text('${widget.complain.fullName}'),
          ),
          ListTile(
            title: Text('Resolved'),
            subtitle: Text('$_value'),
            trailing: Switch(
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                }),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text('Update'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
