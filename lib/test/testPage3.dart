import 'package:flutter/material.dart';
class testPage3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new testPage3State();
  }
}
class testPage3State extends State<testPage3> with SingleTickerProviderStateMixin{
  TabController mtabcontroller;
  PageController mpageController;
  List<Tab> mtabs=[
    new Tab(icon: new Icon(Icons.label)),
    new Tab(text: "一页"),
    new Tab(text: "一页"),
    new Tab(text: "一页"),
    new Tab(text: "一页"),
  ];
  List<Widget> mtabViews=[
    new Text('一页'),
    new Text('一页2'),
    new Text('一页3'),
    new Text('一页4'),
    new Text('一页5'),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mtabcontroller=new TabController(length: mtabs.length, vsync: this);
    mpageController=new PageController(initialPage: 0);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new Column(
          children: <Widget>[
            new Container(
//            child:
//            new TabBar(tabs: mtabs,controller: mtabcontroller,
//              indicatorColor: Colors.red,
//              indicatorWeight: 3.0,
//              indicatorPadding: EdgeInsets.only(top: 0.0,bottom:10.0),
//              indicatorSize: TabBarIndicatorSize.label,
//              indicator: new BoxDecoration(border: Border.all(color: Colors.black,width: 2.0),color: Colors.white),
//              labelColor: Colors.red,
//              unselectedLabelColor: Colors.grey,
//            ),

              margin: EdgeInsets.only(top: 100.0),
              color: Colors.amber,
            ),
            new Expanded(child: new PageView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              children: <Widget>[
              new Container(
                color: Colors.red,
              ),
              new Container(
                color: Colors.blue,
              ),
              ],
              pageSnapping: true,
              controller: mpageController,
              onPageChanged: (index){
                print('当前在第几页${index}');
              },
            ))
          ],
        ),
//        bottomNavigationBar: new Material(    //为了适配主题风格，包一层Material实现风格套用
//          color: Colors.deepOrange,   //底部导航栏主题颜色
//          child: new TabBar(        //TabBar导航标签，底部导航放到Scaffold的bottomNavigationBar中
//            controller: mtabcontroller,      //配置控制器
//            tabs: mtabs,
//            indicatorColor: Colors.white, //tab标签的下划线颜色
//          ),
//        )
    );
  }
}