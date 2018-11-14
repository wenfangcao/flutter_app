import 'package:flutter/material.dart';
import './firstPage.dart';
import './secondPage.dart';
import './thirdPage.dart';
import './others.dart';
import './login.dart';

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> with TickerProviderStateMixin{

  int _tabIndex = 0;

  List<BottomNavigationBarItem> _navigationViews;

  var appBarTitles = ['首页', '购物车', '我的'];

  PageController pageCo4ntroller;

  var _body;

  initData() {
    _body = new IndexedStack(
      children: <Widget>[new FirstPage(), new SecondPage(), new ThirdPage()],
      index: _tabIndex,
    );
  }
//  initData() {
//    _body = new TabBarView(
//      children: [new FirstPage(), new SecondPage(), new ThirdPage()].map((Choice) {
//        return new Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Choice,
//        );
//      }).toList(),
//    );
//  }

  @override
  void initState() {
    super.initState();
    _navigationViews = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        title: new Text(appBarTitles[0]),
        backgroundColor: Colors.blue,
      ),
      new BottomNavigationBarItem(
        icon: const Icon(Icons.widgets),
        title: new Text(appBarTitles[1]),
        backgroundColor: Colors.blue,
      ),
      new BottomNavigationBarItem(
        icon: const Icon(Icons.person),
        title: new Text(appBarTitles[2]),
        backgroundColor: Colors.blue,
      ),
    ];
  }

  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {

    initData();

    return new MaterialApp(
      navigatorKey: navigatorKey,
      theme: new ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.blue
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            appBarTitles[_tabIndex],
            style: new TextStyle(color: Colors.white),
          ),
        ),
        body: _body,
        drawer: _Drawer(context),
        bottomNavigationBar: new BottomNavigationBar(
          items: _navigationViews
              .map((BottomNavigationBarItem navigationView) => navigationView)
              .toList(),
          currentIndex: _tabIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ),
      ),
    );
  }
}

Widget _Drawer(BuildContext context) {
  return new Container (
//    alignment: Alignment.center,
    child: new Drawer(//侧边栏按钮Drawer
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(   //Material内置控件
              accountName: new Text('CYC'), //用户名
              accountEmail: new Text('example@126.com'),  //用户邮箱
              currentAccountPicture: new GestureDetector( //用户头像
                onTap: () => print('current user'),
                child: new CircleAvatar(    //圆形图标控件
                  backgroundImage: new NetworkImage('https://upload.jianshu.io/users/upload_avatars/7700793/dbcf94ba-9e63-4fcf-aa77-361644dd5a87?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'),//图片调取自网络
                ),
              ),
//              otherAccountsPictures: <Widget>[    //粉丝头像
//                new GestureDetector(    //手势探测器，可以识别各种手势，这里只用到了onTap
//                  onTap: () => print('other user'), //暂且先打印一下信息吧，以后再添加跳转页面的逻辑
//                  child: new CircleAvatar(
//                    backgroundImage: new NetworkImage('https://upload.jianshu.io/users/upload_avatars/10878817/240ab127-e41b-496b-80d6-fc6c0c99f291?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'),
//                  ),
//                ),
//                new GestureDetector(
//                  onTap: () => print('other user'),
//                  child: new CircleAvatar(
//                    backgroundImage: new NetworkImage('https://upload.jianshu.io/users/upload_avatars/8346438/e3e45f12-b3c2-45a1-95ac-a608fa3b8960?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'),
//                  ),
//                ),
//              ],
              decoration: new BoxDecoration(    //用一个BoxDecoration装饰器提供背景图片
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  // image: new NetworkImage('https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg')
                  //可以试试图片调取自本地。调用本地资源，需要到pubspec.yaml中配置文件路径
                  image: new ExactAssetImage('images/1.jpg'),
                ),
              ),
            ),
            new ListTile(
                title: new Text('其他页面'),
                trailing: new Icon(Icons.arrow_right),
                onTap: () {
                  print('888');
                  Navigator.of(context).pop(); //点击后收起侧边栏
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new OthersPage()));
                }
            ),
            new Divider(),
            new ListTile(   //退出按钮
                title: new Text('退出登录'),
                trailing: new Icon(Icons.cancel),
                onTap: () {
                  print('999');
                  Navigator.of(context).pop(); //点击后收起侧边栏
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new LoginPage()));
                }
            ),
          ],
        )
    ),
  );
}
