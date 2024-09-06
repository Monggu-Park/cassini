import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cassini',

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: SvgPicture.asset(
            'assets/cassini_logo.svg',
            height: 40,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Cassini Project',
              style: TextStyle(
                fontSize: 24,
                color: Color(0XFFC9A537),
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'
              ),
            ),
            const SizedBox(height: 20),
            IconButton(
                onPressed: () {
                  myDialog(context);
                }, 
                icon: const Icon(
                  Icons.bubble_chart_outlined,
                  color: Color(0xFFC9A537),
                  size: 40,
                ))
          ],
        ),
      ),
    );
  }
}

void myDialog(context) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.grey[800],
          child: Padding(
            padding: const EdgeInsets.all(16.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                    "생일 축하해요 아빠\n"
                    "생일 선물로 뭘 선물해야할까 고민을 해봤는데\n"
                    "아무리 생각해도 아빠가 원하는 건 돈도 아니고 전자기기도 아니고\n"
                    "그건 사실 누나가 돈이 많으니깐 내가 해줄 수 있는게 없어서\n"
                    "머리를 좀 굴려보니깐 아빠의 꿈을 도와주는 역할을 약속하는게\n"
                    "가장 좋은 선물이 아닐까 싶었어.\n"
                    "그래서 아빠에게 퇴직 후 카시니 교육 천문대 프로그램을\n"
                    "기획하고 설계하고 페이지를 개발해줄게요.\n"
                    "여기 이 웹사이트에서 계속 구현할게. 원하는 기능과 기획\n"
                    "언제든지 말해요!\n"
                    "\n생일 축하해 아빠!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0XFFC9A537),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto'
                  ),
                ),
                const SizedBox(height: 16),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    )
                )
              ],
            ),
          )
        );
      }
  );
}
