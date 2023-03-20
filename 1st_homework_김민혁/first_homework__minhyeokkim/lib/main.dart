import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switchValue = false;
  String? _radioValue = "A";
  final _textFieldController = TextEditingController();
  bool _checkBoxValue = false;

  void _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("This is a snackbar!"),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("안녕하세요",
                  style: TextStyle(fontWeight: FontWeight.normal),//결과 화면에 Title이 bold가 해제 된 것 같아서 nomal로 바꿈
                  ),
          content: Text("This is an alert dialog!"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold( //Scafflod 위젯 : 뼈대를 잡아줌
      appBar: AppBar(
        title: Text("Flutter Demo"), //Text 위젯
      ),
      drawer: Drawer( //Drawer 위젯 : 보통 햄버거 버튼으로 이동하는 숨겨진 메뉴
        child: ListView( //ListView 위젯 
          padding: EdgeInsets.zero, 
          children: [
            DrawerHeader(
              child: Text(
                "21900102 김민혁",
                style: TextStyle(fontSize: 50)),// Step6. fontSize 50
                decoration: BoxDecoration(
                color: Colors.black38, //결과화면처럼 헤더 배경 회색으로 바꿈

              ),
            ),
            ListTile( //ListTile 위젯 : ListView의 아이템을 넣는 위젯
              title: Text("Drawer Item 1"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("Drawer Item 2"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column( // Column 위젯 : 세로방향의 frame을 잡아주는 위젯
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch( // Switch 위젯 : Switch 버튼
                  value: _switchValue, 
                  onChanged: (value) => setState(() => _switchValue = value),
                ),
                Row( // Row 위젯 : 가로방향의 frame을 잡아주는 위젯
                  mainAxisAlignment: MainAxisAlignment.center, // Step4. 가운데 정렬
                  children: [
                    Radio( //Radio 위젯 : Radio 버튼
                      value: "A",
                      groupValue: _radioValue,
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    Text("A"),
                    Radio(
                      value: "B",
                      groupValue: _radioValue,
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    Text("B"),
                    Radio(
                      value: "C",
                      groupValue: _radioValue,
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    Text("C"),
                  ],
                ),
                Padding(  //Padding 위젯 : child에 padding을 가지도록 하는 위젯, margin과 구분하기
                  padding: EdgeInsets.all(16.0),
                  child: TextField( // TextField 위젯 : Text를 적을 수 있는 field
                    controller: _textFieldController,
                    decoration: const InputDecoration(
                      hintText: 'Enter som text' //Step3. hint text 추가
                    ),
                  ),
                ),
                Checkbox( // Checkbox 위젯 : Checkbox 버튼
                  value: _checkBoxValue,
                  onChanged: (value) => setState(() => _checkBoxValue = value!),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton( // IconButton 위젯
                      icon: Icon( // Icon 위젯
                        Icons.favorite,
                        color: Colors.green),//결과 화면처럼 녹색으로 바꿈
                      onPressed: (){}
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (value) =>
                          setState(() => _switchValue = value),
                    ),
                    TextButton( //TextButton 위젯
                      onPressed: () => _showAlertDialog(), //Step8. alertDiolog 연결
                      child: Text("Show Alert Dialog"),
                      style: TextButton.styleFrom(
                        primary: Colors.amber, //Step5. font 색상변경
                      )
                    ),
                    ElevatedButton( //ElevatedButton 위젯 : 살짝 뜬 느낌을 줄 수 있는 위젯
                      onPressed: () => _showSnackBar(), //Step8, snackbar 연결
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,//step7. 배경 색상 변경 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), //Step7. radius 30
                        )
                      ),
                      child: Text("Show Snack Bar"),
                    ),
                  ],
                ),
                SizedBox( // SizeBox 위젯 : padding으로도 사용할 수 있고, 이렇게 활용범위가 넓음
                  height: 500,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                          "Item $index",
                          style: TextStyle(fontWeight: FontWeight.bold) //Step9. font weight -> bold 변경 
                        ),
                        subtitle: Text("Subtitle $index"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 5000,
                  child: GridView.count(// GridView 위젯 : 격자 형식의 View
                    crossAxisCount: 3, // Step11. 열 수정
                    children: List.generate(9, (index) {
                      return Card(
                        child: Center(
                          child: Text("Item $index"),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}