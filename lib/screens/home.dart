import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:man_page/main.dart';
import 'package:man_page/res/res.dart';
import 'package:man_page/screens/cmd_page.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: cmds.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: Text(
                  cmds[index],
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: font,
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    LineIcons.angleRight,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CmdPage(
                          index: index,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
