import 'package:bucket/bucket_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => BucketService()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

/// 버킷 클래스
class Bucket {
  String job; // 할 일
  bool isDone; // 완료 여부

  Bucket(this.job, this.isDone); // 생성자
}

/// 홈 페이지
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BucketService>(builder: (context, BucketService, child) {
      List<Bucket> bucketList = BucketService.bucketList;
      return Scaffold(
        appBar: AppBar(
          title: const Text("버킷 리스트"),
        ),
        body: bucketList.isEmpty
            ? const Center(child: Text("버킷 리스트를 작성해 주세요."))
            : ListView.builder(
                itemCount: bucketList.length, // bucketList 개수 만큼 보여주기
                itemBuilder: (context, index) {
                  var bucket = bucketList[index]; // index에 해당하는 bucket 가져오기
                  return ListTile(
                    // 버킷 리스트 할 일
                    title: Text(
                      bucket.job,
                      style: TextStyle(
                        fontSize: 24,
                        color: bucket.isDone ? Colors.grey : Colors.black,
                        decoration: bucket.isDone
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    // 삭제 아이콘 버튼
                    trailing: IconButton(
                      icon: const Icon(CupertinoIcons.delete),
                      onPressed: () {
                        BucketService.deleteBucket(index);
                      },
                    ),
                    onTap: () {
                      bucket.isDone = !bucket.isDone;
                      BucketService.updateBucket(bucket, index);
                    },
                  );
                },
              ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            // + 버튼 클릭시 버킷 생성 페이지로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CreatePage()),
            );
          },
        ),
      );
    });
  }
}

/// 버킷 생성 페이지
class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  // TextField의 값을 가져올 때 사용합니다.
  TextEditingController textController = TextEditingController();

  // 경고 메세지
  String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("버킷리스트 작성"),
        // 뒤로가기 버튼
        leading: IconButton(
          icon: const Icon(CupertinoIcons.chevron_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 텍스트 입력창
            TextField(
              controller: textController,
              autofocus: true,
              decoration: InputDecoration(
                hintText: "하고 싶은 일을 입력하세요",
                errorText: error,
              ),
            ),
            const SizedBox(height: 32),
            // 추가하기 버튼
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                child: const Text(
                  "추가하기",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  String job = textController.text;
                  if (job.isEmpty) {
                    setState(() {
                      error = "내용을 입력하세요";
                    });
                  } else {
                    setState(() {
                      error = null;
                    });

                    BucketService bucketService = context.read<BucketService>();
                    bucketService.createBucket(job);
                    Navigator.pop(context);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
