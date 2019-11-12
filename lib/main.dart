import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp(title: "测试webview_flutter"));

class MyApp extends StatefulWidget {
  final String title;

  MyApp({Key key, this.title}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: WebView(
            initialUrl: "https://www.baidu.com/",
            javascriptMode: JavascriptMode.unrestricted,
          )),
    );
  }
}

/*
* 说明：
* 我当前的测试用的是真机：安卓8.1.0，
* 软件环境：[√] Flutter (Channel beta, v1.9.1+hotfix.1, on Microsoft Windows [Version 10.0.17763.437], locale zh-CN)
    • Flutter version 1.9.1+hotfix.1 at D:\haiNing_to_yy\flutter
    • Framework revision a1fb3fabec (10 weeks ago), 2019-09-03 18:07:52 -0700
    • Engine revision cc88fa45db
    • Dart version 2.5.0

* webview——webview_flutter: ^0.3.10+4
*
*
* 
*
* 当webview_flutter: ^0.3.10+4时，
* 在手机安卓6.0的情况下闪退


  webview_flutter: ^0.3.15+1【可以使用，不闪退（已经验证）;但是不知道在手机安卓6.0上闪退吗】
* */
