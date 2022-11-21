import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListViews'),
        ),
        body: MyWidget(),
      )
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyWidget extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  @override
  Widget build(BuildContext context) {
    final List<String>myName = <String> ["c","c++","php","Android","ios"];
    return ListView.separated( 
      itemCount: myName.length,
      itemBuilder: (context,index){
        return  Card(
          child: 
            ListTile (
              leading: CircleAvatar(backgroundImage:NetworkImage('https://as2.ftcdn.net/v2/jpg/02/17/88/73/1000_F_217887350_mDfLv2ootQNeffWXT57VQr8OX7IvZKvB.jpg'),
            ),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
            title: Text('${myName[index]}'),
            subtitle: Text("subtitle"),
            onTap: () {
              print("clicked${index}");
            },
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Theme.of(context).errorColor,
        );
      },
    );
  }
}
