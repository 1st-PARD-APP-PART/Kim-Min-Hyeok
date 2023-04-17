import 'package:flutter/material.dart';
import 'theme.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
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
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                '중고거래 글쓰기',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorStyle.primary_text),
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/detail');
                },
                child: Text(
                  '완료',
                  style: TextStyle(color: ColorStyle.primary),
                ))
          ],
        ),
        body: Column(
          children: [
            Divider(height: 1, color: ColorStyle.divider_bar),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 100,
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: const BorderSide(
                        width: 1, color: ColorStyle.divider_bar),
                    elevation: 0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Divider(height: 20, color: ColorStyle.divider_list),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('제목'),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(height: 20, color: ColorStyle.divider_list),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('카테고리'),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(height: 20, color: ColorStyle.divider_list),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('가격'),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(height: 20, color: ColorStyle.divider_list),
            ),
          ],
        ));
  }
}
