import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextColorPage extends StatefulWidget {
    TextColorPage({Key key, this.title}) : super(key: key);
    final String title;

    @override
    _TextColorPageState createState() => _TextColorPageState();
}

class _TextColorPageState extends State<TextColorPage> {
    var _color = CupertinoColors.black;

    @override
    Widget build(BuildContext context) {
        return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
                middle: Text(widget.title),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: RichText(
                          text: TextSpan(
                              text: "Change color of this text",
                              style: TextStyle(color: _color, fontSize: 25.0))),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            CupertinoButton(
                                color: CupertinoColors.activeBlue,
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text('Blue'),
                                onPressed: () {
                                    setState(() {
                                        _color = CupertinoColors.activeBlue;
                                    });
                                },
                            ),
                            SizedBox(
                                width: 20.0,
                            ),
                            CupertinoButton(
                                color: CupertinoColors.activeGreen,
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text('Green'),
                                onPressed: () {
                                    setState(() {
                                        _color = CupertinoColors.activeGreen;
                                    });
                                },
                            ),
                            SizedBox(
                                width: 20.0,
                            ),
                            CupertinoButton(
                                color: CupertinoColors.destructiveRed,
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text('Red'),
                                onPressed: () {
                                    setState(() {
                                        _color = CupertinoColors.destructiveRed;
                                    });
                                },
                            ),
                        ],
                    ),
                ],
            ),
        );
    }
}
