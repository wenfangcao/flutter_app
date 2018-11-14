import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ThirdPageState();

}

class ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return new Scaffold(
      body: new Column(
        children: [
          new Container(
            height: ScreenUtil().setHeight(400),
            width: ScreenUtil().setWidth(750),
            decoration: BoxDecoration(
              color: Colors.blue[200],
            ),
            alignment: Alignment(0.0, 0.0),
            child: new Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                 new CircleAvatar(    //圆形图标控件
                    backgroundImage: new NetworkImage('https://upload.jianshu.io/users/upload_avatars/7700793/dbcf94ba-9e63-4fcf-aa77-361644dd5a87?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'),//图片调取自网络
                    child: Text('name'),
                    radius: 40.0,
                 ),
                 new Container(
                   margin: EdgeInsets.only(top: 10.0),
                   child: new Text('name', style: new TextStyle(color: Colors.white, fontSize: ScreenUtil().setWidth(36))),
                 ),
              ],
            ),
          ),
          new Text('这是第3个界面'),
        ]
      ),
    );
  }

}
