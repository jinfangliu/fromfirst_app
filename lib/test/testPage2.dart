import 'package:flutter/material.dart';
import 'package:fromfirst_app/test/testPage4.dart';
class testPage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new testPage2State();
  }
}
class testPage2State extends State<testPage2> with SingleTickerProviderStateMixin{
  TabController mtabcontroller;
  List<Tab> mtabs=[
    new Tab(text: '精选',),
    new Tab(text: '送女友',),
    new Tab(text: '送同事',),
    new Tab(text: '送基友',),
    new Tab(text: '送长辈',),
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
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            width: double.infinity,
            height: 50.0,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Expanded(child: new Container(
                  child: new Text('礼物说',style: TextStyle(color: Colors.red,fontSize: 18.0,
                      fontFamily: "extra",fontWeight: FontWeight.bold
                  ),
                  ),
                  alignment: Alignment.center,
                ),flex: 2,),
                new Expanded(child:  new Container(
                  height: double.infinity,
                  margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  decoration: BoxDecoration(
                      color:Color(0x99F1E2E4),
                      borderRadius:BorderRadius.circular(15.0)
                  ),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Icon(Icons.search,size: 18.0,color: Color(0xCC666666),),
                      new Text('选份走心的礼物送给她Ta',style: TextStyle(fontSize: 12.0,color: Color(0xCC666666)),)
                    ],
                  ),
                ) ,flex: 5,),
                new Expanded(child:  new IconButton(icon:  new Icon(Icons.switch_camera,size: 20.0,color: Colors.red,), onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context){
                    return new InheritedWidgetTestContainer();
                  }));
                }),flex: 1,)
              ],
            ),
          ),
          new Container(
            height: 40.0,
            child:
           new Row(
             children: <Widget>[

               new TabBar(tabs: mtabs,controller: mtabcontroller,
                 indicatorColor: Colors.red,
                 indicatorWeight: 2.0,
                 labelColor: Colors.red,
                 labelStyle: TextStyle(fontFamily: "extra",fontWeight: FontWeight.bold,fontSize: 13.0),
                 unselectedLabelColor: Color(0xCC666666),
                 indicatorSize: TabBarIndicatorSize.label,
                 isScrollable: true,
                 unselectedLabelStyle: TextStyle(fontFamily: null,fontWeight: FontWeight.normal,fontSize: 13.0),
               )

             ],
           )

          ),
          new Expanded(child: new TabBarView(children: mtabViews,controller: mtabcontroller,))
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