import 'package:customer_support_app/models/complain.dart';
import 'package:customer_support_app/pages/companyunit.dart';
import 'package:flutter/material.dart';

class ResolvePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resolve'),
        centerTitle: true,
      ),
      body: _ResolvePageContent(),
    );
  }
}

class _ResolvePageContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ResolvePageContentState();
}

class _ResolvePageContentState extends State<_ResolvePageContent> {
  List<Complain> getComplaintsForUnit(int unit) {
    return complaints
        .where((complaint) => complaint.companyUnit == unit)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text('Marketing'),
            subtitle: Text('Marketing departmet'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => CompanyUnitPage(
                          title: 'Marketing',
                          complaints: getComplaintsForUnit(1),
                        )),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.transfer_within_a_station),
            title: Text('Engineering'),
            subtitle: Text('Marketing departmet'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => CompanyUnitPage(
                          title: 'Engineering',
                          complaints: getComplaintsForUnit(2),
                        )),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.zoom_in),
            title: Text('Research'),
            subtitle: Text('Research departmet'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => CompanyUnitPage(
                          title: 'Research',
                          complaints: getComplaintsForUnit(3),
                        )),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.local_car_wash),
            title: Text('Development'),
            subtitle: Text('Development departmet'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => CompanyUnitPage(
                          title: 'Development',
                          complaints: getComplaintsForUnit(4),
                        )),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Sales'),
            subtitle: Text('Sales departmet'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => CompanyUnitPage(
                          title: 'Sales',
                          complaints: getComplaintsForUnit(5),
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
