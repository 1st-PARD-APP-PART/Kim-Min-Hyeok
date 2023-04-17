import 'package:flutter/material.dart';
import 'theme.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: ColorStyle.background,
        appBar: AppBar(
          backgroundColor: ColorStyle.background,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: ColorStyle.arrow,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                '근처 동네',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: ListTile(
                      title: Text(
                        '경상북도 포항시 북구 흥해읍 한동로 558',
                        style: TextStyle(fontSize: 16),
                        ),
                    ),
                  );
                }, 
                separatorBuilder: (context, index) {
                  return Divider(height: 5, color: Color.fromRGBO(221, 221, 221, 1));
                }, 
                itemCount: 12
                ),
            )
          ],
        )
    );
  }
}
