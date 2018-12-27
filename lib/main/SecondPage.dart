import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> with SingleTickerProviderStateMixin{
  AnimationController animationController;
  Animation<double> animation;
  final Tween doubleTween = new Tween<double>(begin: 50.0, end: 300.0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=new AnimationController(vsync: this,duration: new Duration(seconds: 3));
    animation=doubleTween.animate(animationController);
    animationController.addListener((){
      print('当前值');
      print(animation.value.toString());
    });
//    animationController.forward();
  }
  Offset getOff(){
    return new Offset(animation.value, 0);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   new Scaffold(
      body: new Container(
        child:new Container(
          width: double.infinity,
          height: double.infinity,
          child:   new GestureDetector(
            child: new Container(
              width: animation.value,
              height:animation.value,
              color: Colors.red,
//),
            ),
            onTap: (){
              animationController.forward();
            },

          ),
        ),
      ),
    );

  }
}