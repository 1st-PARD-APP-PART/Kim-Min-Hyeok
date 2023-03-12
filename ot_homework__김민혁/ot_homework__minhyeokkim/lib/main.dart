import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { //정적 위젯
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hw1',
      theme: ThemeData( //테마설정: 각 블록마다 px, color등의 설정을 따로하는 것보다 theme 설정을 하고 가져다 쓰는 것이 프로젝트 관리에 수월
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '21900102 김민혁'),
    );
  }
}

class MyHomePage extends StatefulWidget { //동적 위젯
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() { 
    setState(() {
      _counter = _counter+10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 앱 레이아웃 설정
      appBar: AppBar( 
        centerTitle: true, //아이폰은 앱바 자동 중앙정렬이 되지만 안드로이드는 기본값 좌측이므로
        title: Text(widget.title),
      ),
      body: Center(
        child: Column( //Column(행) 하나만 하므로 child
          mainAxisAlignment: MainAxisAlignment.center, // body center에 위치
          children: <Widget>[ // Wiget이 여러개 이므로 children '['는 syntax
            const Text( //text 위젯
              '일한 만큼 놀고, 논 만큼 일하자',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
