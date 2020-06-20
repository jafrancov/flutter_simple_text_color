import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_text_color/src/pages/text_color_page.dart';

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return CupertinoApp(
            debugShowCheckedModeBanner: false,
            title: 'Text Color',
            home: TextColorPage(title: 'Text Color'),
            theme: CupertinoThemeData(primaryColor: Colors.blue),
        );
    }
}
