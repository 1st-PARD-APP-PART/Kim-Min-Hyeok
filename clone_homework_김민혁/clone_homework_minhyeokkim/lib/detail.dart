import 'package:flutter/material.dart';
import 'theme.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(
              children: [
                Image.asset('images/detail_item.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,60, 0, 0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.ios_share_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Image.asset('images/person.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        '파드짱',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '한동대',
                        style: TextStyle(
                            fontSize: 14, color: ColorStyle.second_text),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'images/state.png',
                    height: 82,
                    width: 125,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child:
                  Divider(height: 20, color: Color.fromRGBO(216, 216, 216, 1)),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '맥북',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('새 상품 입니다'),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Row(
                children: [
                  Text('관심 7'),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_border))
                ],
              ),
            ),
            Divider(height: 20, color: ColorStyle.divider_list),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
                VerticalDivider(width: 20, color: ColorStyle.divider_list),
                Column(
                  children: [
                    Text(
                      '790,000원',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '가격 제안하기',
                        style: TextStyle(
                          color: ColorStyle.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/chat');
                    },
                    child: Text(
                      '채팅하기',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorStyle.primary, elevation: 0),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
