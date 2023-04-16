import 'package:flutter/material.dart';
import 'package:dexter/components/widgets/section_widgets/section_headline.dart';

class Section extends StatelessWidget {
  Section({required this.sectionTitle, required this.sectionContent});
  String sectionTitle;
  List<Widget> sectionContent;
  List<Widget> sections = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 0, child: SectionHeadline(title: sectionTitle)),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: sectionContent,
            ),
          ),
        ),
      ],
    );
  }
}
