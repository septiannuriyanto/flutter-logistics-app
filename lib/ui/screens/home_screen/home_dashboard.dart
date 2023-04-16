import 'package:flutter/material.dart';
import 'package:dexter/assets/theme/color_constant.dart';
import 'package:dexter/components/widgets/side_drawer/side_drawer.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 25, 25),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 25, 25),
        foregroundColor: Colors.white,
        title: SelectableText(
          'Business Intelligence PT. Scalar Coding',
          style: defaultTxtColor,
        ),
      ),
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            flex: 0,
            child: Container(
              width: 200,
              decoration: const BoxDecoration(color: bgColor),
              child: SideDrawer(),
            ),
          ),
          Expanded(flex: 5, child: Container()),
          Expanded(
              flex: 1,
              child: Container(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 34, 34, 34)),
              )),
        ],
      )),
    );
  }
}
