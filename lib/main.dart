import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fromfirst_app/CommonUtils.dart';
import 'package:fromfirst_app/test/testPage2.dart';
import 'main/FirstPage.dart';
import 'main/SecondPage.dart';
import 'main/FourthPage.dart';
import 'main/ThirdPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: "礼物说",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tabImages;
  int _tabIndex ;
  var appBarTitles = ['首页', '榜单', '分类', '我的'];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabIndex=0;
    if (tabImages == null) {
      tabImages = [
        [
          CommonUtils.getTabImage('images/main1_normal.png',25.0,25.0,BoxFit.fill),
          CommonUtils.getTabImage('images/main1_press.png',25.0,25.0,BoxFit.fill),
        ],
        [
          CommonUtils.getTabImage('images/main2_normal.png',25.0,25.0,BoxFit.fill),
          CommonUtils.getTabImage('images/main2_press.png',25.0,25.0,BoxFit.fill),
        ],
        [
          CommonUtils.getTabImage('images/main3_normal.png',25.0,25.0,BoxFit.fill),
          CommonUtils.getTabImage('images/main3_press.png',25.0,25.0,BoxFit.fill),
        ],
        [
          CommonUtils.getTabImage('images/main4_normal.png',25.0,25.0,BoxFit.fill),
          CommonUtils.getTabImage('images/main4_press.png',25.0,25.0,BoxFit.fill),
        ]
      ];
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new IndexedStack(
        children: <Widget>[
          new FirstPage(),
//        new testPage2(),
          new SecondPage(),
          new ThirdPage(),
          new FourthPage()
        ],
        index: _tabIndex,
      ),

        bottomNavigationBar: new CupertinoTabBar(items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(icon: getTabIcon(0), title: new Text(appBarTitles[0],style: getTabTextStyle(0),textAlign: TextAlign.center,)),
          new BottomNavigationBarItem(icon: getTabIcon(1), title: new Text(appBarTitles[1],style: getTabTextStyle(1),textAlign: TextAlign.center,)),
          new BottomNavigationBarItem(icon: getTabIcon(2), title: new Text(appBarTitles[2],style: getTabTextStyle(2),textAlign: TextAlign.center,)),
          new BottomNavigationBarItem(icon: getTabIcon(3), title: new Text(appBarTitles[3],style: getTabTextStyle(3),textAlign: TextAlign.center,)),
        ],
          currentIndex: _tabIndex,
          onTap: (index) {
            setState((){
              _tabIndex = index;
              print(_tabIndex.toString());
            });
          },)


    );
  }

  TextStyle getTabTextStyle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new TextStyle(color: Colors.red);
    }
    return new TextStyle(color: Color(0xFF333333));
  }

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }
}
