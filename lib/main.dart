import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("금호동3가"),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.menu),
          Icon(CupertinoIcons.bell_fill)
        ],
      ),
      body: Container(
        height: 150,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(
              'assets/dog.jpg',
              width: 150,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('캐논 DSLR 100D (단렌즈.충전기 16기가SD 포함)'),
                  Text('성동구 행당동 끌올 10분 전'),
                  Text('210,000원'),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [Icon(Icons.favorite), Text('4')])
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
