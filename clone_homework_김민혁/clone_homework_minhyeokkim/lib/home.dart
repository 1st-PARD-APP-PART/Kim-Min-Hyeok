import 'package:flutter/material.dart';
import 'theme.dart';
import 'navigation.dart';

class Home extends Navigation {
  const Home({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            TextButton(
              onPressed: () {},
              child: Text('한동대',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(68, 68, 68, 1),
                      fontWeight: FontWeight.bold)),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.keyboard_arrow_down_sharp,
                    color: Color.fromRGBO(68, 68, 68, 1)))
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: ColorStyle.primary_text,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: ColorStyle.primary_text,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Divider(height: 1, color: ColorStyle.divider_bar),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/item.png',
                              width: 70,
                              height: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'S22 자급제 화이트 미개봉',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: ColorStyle.primary_text),
                                  ),
                                  Text(
                                    '군자동',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorStyle.second_text),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      if (index == 0)
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 8, 0),
                                          child: Container(
                                            width: 53,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              color: ColorStyle.state_wait,
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '예약중',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (index == 1)
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 8, 0),
                                          child: Container(
                                            width: 53,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              color: ColorStyle.state_done,
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '거래완료',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      Text(
                                        '750,000원',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: ColorStyle.primary_text,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 0,
                          top: 50,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                    size: 13,
                                  )),
                            ],
                          )),
                      Positioned(
                        right: 0,
                        top: 67,
                        child: Text(
                          '7',
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ]),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(height: 1, color: ColorStyle.divider_list);
                },
                itemCount: 5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add');
                  },
                  child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(67, 67),
                      shape: const CircleBorder(),
                      backgroundColor: ColorStyle.primary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  
}
