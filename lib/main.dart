// import 'package:flutter/material.dart';
// void main () => runApp(MyApp(
//   items: new List<String>.generate(100, (i)=> 'item $i')
// ));

// class MyApp extends StatelessWidget{
//   final List<String> items;
//   MyApp({Key key,@required this.items}):super(key:key);
//   @override
//   Widget build(BuildContext context ){
//       return MaterialApp(
//         title:'ListView widget',
//         home:Scaffold(
//           appBar: new AppBar(title: new Text('chen xiao qi'),),
//           body:GridView(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3,
//               mainAxisSpacing: 2.0,
//               crossAxisSpacing: 2.0,
//               childAspectRatio: 0.682
//             ),
//             children: <Widget>[
//              new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
//              new Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',fit: BoxFit.cover),
//              new Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
//              new Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',fit: BoxFit.cover),
//              new Image.network('http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',fit: BoxFit.cover),
//              new Image.network('http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',fit: BoxFit.cover),
//              new Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
//              new Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
//              new Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
           
//             ],
//           )
//         ),
//       );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//自定义组件
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: new Text('flutter demo'),
        ),
        body: new Center(
          child: new image1(),
        ),
      ),
      theme: new ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

//自定义组件
 class HomeContent extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return new Center(
    child:new Text(
      'hello flutter!',
       textDirection: TextDirection.ltr,
       style: TextStyle(
         fontSize: 20.0,
         color: Colors.blue
       ),
        )
      );
  }
}

//自定义container组件
class container1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text(
        '我是一个文本',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0
        ),
        ),
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color: Colors.yellow,
          width: 2.0
        )
      ),
    );
  }
}
// 自定义image1组件
class image1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipOval(
        // child:new Image.network(
        // 'https://i0.hdslb.com/bfs/sycp/creative_img/201910/a367a147d8f0d6da637afd4e450815b7.jpg',
        // // alignment: Alignment.topLeft,
        // // // color: Colors.yellow,
        // fit: BoxFit.cover,
        // ),
        child: new Image.asset(
          "images/1.png",
          fit: BoxFit.cover,
          ),
      ),
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(150),
        // image: DecorationImage(
        //   image: NetworkImage('https://i0.hdslb.com/bfs/sycp/creative_img/201910/a367a147d8f0d6da637afd4e450815b7.jpg'),
        //   fit: BoxFit.cover
        // )
      ),
    );
  }
} 