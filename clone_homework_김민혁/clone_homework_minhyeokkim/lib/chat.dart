import 'package:flutter/material.dart';
import 'theme.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  // This widget is the Chat page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int _selectedIndex = 1;

  @override
  Widget build(context) {
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
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: ColorStyle.arrow,
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 16,
                )),
            SizedBox(
              width: 90,
            ),
            TextButton(
              onPressed: () {},
              child: Text('모모로',
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorStyle.primary_text,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(height: 23, color: ColorStyle.divider_bar),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Image.asset(
                'images/detail_item.png',
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Row(
                    children: [Text('판매중'), Text('맥북')],
                  ),
                  Text('790,000원')
                ],
              ),
              Spacer(),
              SizedBox(
                width: 110,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: Color(0xffAAAAAA),
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 16,
                        color: Colors.black,
                      ),
                      Text(
                        ' 예약하기',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Divider(height: 23, color: ColorStyle.divider_bar),
          Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                    ///alignment: Alignment.centerLeft,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('저랑 사귀실래요?'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorStyle.primary, elevation: 0),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Image.asset('images/person.png'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '안돼요.',
                              style: TextStyle(color: ColorStyle.primary_text),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(231, 231, 231, 1),
                            elevation: 0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                color: Color.fromRGBO(238, 238, 238, 1),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 70, 8),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none)),
                ),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: Icon(
                    Icons.arrow_right,
                    size: 80,
                    color: Color.fromRGBO(220, 220, 220, 1),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
