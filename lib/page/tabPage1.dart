import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_refresh/flutter_refresh.dart';
class tabPage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new tabPage1State();
  }
}
//AutomaticKeepAliveClientMixin解决状态改变
class tabPage1State extends State <tabPage1>with AutomaticKeepAliveClientMixin {
  List<String> listItems=new List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Refresh(
        onFooterRefresh: onFooterRefresh,
        onHeaderRefresh: onHeaderRefresh,
        childBuilder: (BuildContext context,
            {ScrollController controller, ScrollPhysics physics}) {
          return new  ListView.builder(
            itemBuilder: (BuildContext context,int i){
              return _getItems(context,i);
            },
            itemCount:1,
            physics: physics,
            controller: controller,
          );
        }
    );

  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;//不销毁

Widget _getItems(BuildContext context,int i){

//  if(i==0){
    return  Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        child: Swiper(
          itemBuilder: _swiperBuilder,
          itemCount: 3,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white,
              )),
          control: new SwiperControl(),
          scrollDirection: Axis.horizontal,
          autoplay: true,
          onTap: (index) => print('点击了第$index个'),
        ));
//  }else{
//    return new Text('');
//  }
}
  Widget _swiperBuilder(BuildContext context, int index) {
    return (Image.network(
      "http://via.placeholder.com/350x150",
      fit: BoxFit.fill,
    ));
  }
  Future<Null> onFooterRefresh() {
    return new Future.delayed(new Duration(seconds: 1), () {
      setState(() {

      });
    });
  }

  Future<Null> onHeaderRefresh() {
    return new Future.delayed(new Duration(seconds: 1), () {
      setState(() {

      });
    });
  }
}