import 'package:customer_support_app/models/complain.dart';
import 'package:customer_support_app/pages/item.dart';
import 'package:flutter/material.dart';

class CompanyUnitPage extends StatelessWidget {
  final String title;
  final List<Complain> complaints;

  const CompanyUnitPage(
      {Key key, @required this.title, @required this.complaints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
        centerTitle: true,
      ),
      body: CompanyUnitPageContent(complaints: complaints),
    );
  }
}

class CompanyUnitPageContent extends StatefulWidget {
  final List<Complain> complaints;

  const CompanyUnitPageContent({Key key, @required this.complaints})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => CompanyUnitPageContentState();
}

class CompanyUnitPageContentState extends State<CompanyUnitPageContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: widget.complaints
            .map((complaint) => ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => ItemPage(
                                complain: complaint,
                              )),
                    );
                  },
                  title: Text('${complaint.fullName}'),
                  trailing: complaint.resolved == false
                      ? Icon(
                          Icons.cancel,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                ))
            .toList(),
      ),
    );
  }
}
