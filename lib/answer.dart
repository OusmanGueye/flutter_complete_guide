import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHeadl;
  final String answersText;

  Answer(this.selectHeadl, this.answersText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answersText),
        onPressed: selectHeadl,
      ),
    );
  }
}
