import 'package:flutter/material.dart';
import 'theme.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  // This widget is the Profile page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              child: Text('프로필 수정',
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorStyle.primary_text,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Divider(height: 23, color: ColorStyle.divider_bar),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'images/profile.png',
            ),
          ),
          Container(
            height: 50,
            width: 330,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                '본인 이름을 적어주세요!',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 0,
                    side: const BorderSide(
                      width: 1,
                      color:ColorStyle.divider_bar
                    )
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
            child: Divider(height: 13, color: ColorStyle.divider_list),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '사는곳',
                  style: TextStyle(fontSize: 18),                
                ),
                IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 17,)
                  )
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Divider(height: 13, color: ColorStyle.divider_list),
          ),
          Spacer(),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: ElevatedButton(
              onPressed: () {}, 
              child: Text(
                '완료'
              ),
              style: ElevatedButton.styleFrom(
                    primary: ColorStyle.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
