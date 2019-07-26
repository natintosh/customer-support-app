import 'package:customer_support_app/pages/complain.dart';
import 'package:customer_support_app/pages/resolve.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Customer Support',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: HomePageContent(),
    );
  }
}

class HomePageContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child: Card(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ComplainPage()),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.grey[100],
                      ),
                    ),
                    Container(
                      height: 60,
                      child: Center(
                        child: Text('Complain'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            child: Card(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ResolvePage()),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.grey[100],
                      ),
                    ),
                    Container(
                      height: 60,
                      child: Center(
                        child: Text('Resolve'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
