import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('List Of Images'),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 40, 0, 20),
          child: Text(
            'test text',
            style: TextStyle(
                fontStyle: FontStyle.italic, //chỉnh kiểu text
                color: Colors.blue,   //     // chỉnh màu text
              backgroundColor: Colors.white,  // chỉnh background của text
              // fontFamily:    //custom font do ta đưa vào thư mục asset và khai báo ở pubspec.yaml
              fontSize: 20.5,     // chỉnh kích cỡ text kiểu double
              decoration: TextDecoration.lineThrough,      //chỉnh kiểu gạch chân ở trên giữa hoặc dưới text
              decorationStyle: TextDecorationStyle.dashed,   //để chỉnh kiểu gạch chân như trên với kiểu khác
              fontWeight: FontWeight.bold ,      //chỉnh độ dày của text
              height: 0,          //chiều cao của khoảng text
              // overflow: TextOverflow.clip    //xử lý văn bản khi bị tràn
              letterSpacing: 0,           //khoảng cách của từng ký tự
              wordSpacing: 20 ,              //khoảng cách từng từ
              //shadows     //tô bóng bên dưới text
              //locale:      //dùng để chọ ngôn ngữ
              inherit: false,  //false các thuộc tính không có giá trị rõ ràng sẽ hoàn nguyên về mặc định:
              // màu trắng, kích thước phông chữ 10 pixel, ở mặt phông chữ sans-serif.
            ),
            textAlign: TextAlign.end, //chỉnh vị trí của text so với vùng chứa nó
            textDirection: TextDirection.rtl    //điều hướng rtl hoặc ltr

          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(160, 40, 0, 20),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Wrap'),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(160, 40, 0, 20),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Api'),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(160, 40, 0, 0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Push Notification'),
          ),
        )
      ]),
    );
  }
}
