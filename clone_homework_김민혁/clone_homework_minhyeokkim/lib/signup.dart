import 'package:flutter/material.dart';
import 'theme.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(32, 7, 32, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '안녕하세요!\n휴대폰 번호로 로그인해주세요.',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 11),
              Text(
                '휴대폰 번호는 안전하게 보관되며 이웃들에게 공개되지 않아요',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 23),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: '휴대폰 번호 (- 없이 숫자만 입력)',
                        border: const OutlineInputBorder(
                        )
                      ),
                    ),
                    SizedBox(height: 13),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '비밀번호',
                        border: const OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 13),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '비밀번호 확인',
                        border: const OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 13),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '닉네임',
                        border: const OutlineInputBorder()
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 358,
                height: 91,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: Text(
                    '회원가입',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: ColorStyle.primary,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
