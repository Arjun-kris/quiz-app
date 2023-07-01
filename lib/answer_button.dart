import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  AnswerButton({super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
       ),
      ),
      child: Text(answerText, style: const TextStyle(color: Colors.white),
    ),
    );
  }

}
