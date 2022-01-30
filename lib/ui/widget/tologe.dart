import 'package:cook/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
            DefaultTabController(
              length: 2, // length of tabs
              initialIndex: 0,
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(25)
                        ),
                  child: TabBar(
                    
                    indicatorColor: Colors.transparent,
                    labelStyle: method,
                   indicator: BoxDecoration(
                            color: Colors.orange.shade300,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'المكونات'),
                      Tab(text: 'الطريقة'),
                    
                    ],
                  ),
                ),
                Container(
                  height: 400, //height of TabBarView
                  decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                  ),
                  child: TabBarView(children: <Widget>[
                    Container(
                      child: Center(
                        child: Text('Display Tab 1', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      ),
                    ),
                   
                  
                  ])
                )
              ])
            ),
          ]),
        ),
      ),
    );
  }
}