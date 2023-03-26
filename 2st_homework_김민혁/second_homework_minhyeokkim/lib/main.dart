import 'package:flutter/material.dart';
import 'data.dart'; // data.dart의 정보를 import 한다.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Future<List<String>> _getData() async {
    // 1. Future를 통해 data.dart의 리스트 정보를 가져올 때 async, await와 Future.delayed를 활용하여 10초의 정지 시간을 갖도록 한다.
    return await Future.delayed(Duration(seconds: 10), () {//_getData는 함수이므로 return 값을 지정해줘야 함
      return myData; 
      // 2. 10초가 지난 후 리스트 정보를 가져왔다면 then()을 활용하여 console창에 ‘출력 완료’ 라는 text가 출력하도록 만들어준다.
    }).then((val) {
      print('출력완료');
      return val;//then의 return값을 지정해 주지 않으면 오류가 남
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: FutureBuilder<List<String>>(
          future: _getData(),
          builder: // 3. FutureBuilder<List<String>>와 Listview.Builder를 활용하여 아래 ListTile 코드를 통해 결과 화면과 같은 화면을 출력한다.
              (BuildContext context, AsyncSnapshot<List<String>> snapshot) {//snapshot으로 받아오는 자료형 지정(지정하지 않을 시 dynamic 자료형으로 지정할 수 있음)
            if (snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());//waiting 하는 동안 return 값을 지정해주지 않으면, await 10초 동안 값을 받지 못해서 NO DATA가 화면에 출력됨
            } else if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(snapshot.data![index]),
                    );
                  });
            } else if (snapshot.hasError) {
              return Center(child: Text('Error!: ${snapshot.error}'));
            } else {
              return Center(child: Text('NO DATA'));
            }
          }),
    );
  }
}
