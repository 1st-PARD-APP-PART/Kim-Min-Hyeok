import 'package:flutter/material.dart';
import 'theme.dart';
import 'navigation.dart';

class MyCarrot extends Navigation {
  const MyCarrot({Key? key}) : super(key: key);

  // This widget is the MyCarrot page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyCarrot> createState() => _MyCarrotState();
}

class _MyCarrotState extends State<MyCarrot> {
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
              child: Text('나의 당근',
                  style: TextStyle(
                      fontSize: 24,
                      color: ColorStyle.primary_text,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                '로그아웃',
                style: TextStyle(fontSize: 14, color: ColorStyle.primary_text),
              ))
        ],
      ),
      body: Column(
        children: [
          Divider(height: 1, color: ColorStyle.divider_bar),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  'images/profile.png',
                ),
                SizedBox(width: 30,),
                Text(
                  '본인 이름',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 74,),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  }, 
                  icon: Icon(Icons.arrow_forward_ios_outlined)
                  )
              ],
            ),
          ),
          Divider(height: 3, color: ColorStyle.divider_list),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {}, 
                      child: Icon(Icons.list, color: ColorStyle.primary),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(67, 67),
                        shape: const CircleBorder(),
                        backgroundColor: ColorStyle.second),
                    ),
                  ],
                ),
                SizedBox(width: 50,),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {}, 
                      child: Icon(Icons.shopping_bag, color: ColorStyle.primary,),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(67, 67),
                        shape: const CircleBorder(),
                        backgroundColor: ColorStyle.second),
                    ),
                  ],
                ),
                SizedBox(width: 50,),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {}, 
                      child: Icon(Icons.favorite, color: ColorStyle.primary),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(67, 67),
                        shape: const CircleBorder(),
                        backgroundColor: ColorStyle.second),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(height: 3, color: ColorStyle.divider_list),
          Center(
            child: Text(
              '최근판매내역',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ),
          Divider(height: 3, color: ColorStyle.divider_list),
          Stack(
            children: [
              Container(
                width: 300,
                child: Image.asset('images/item.png',fit: BoxFit.fitWidth,),
              ),
              Positioned(
                left: 100, top: 130,
                child: Text(
                    '갤럭시 S22',
                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
              ),
              
            ],
          )
          
        ],
      ),
    );
  }
}
