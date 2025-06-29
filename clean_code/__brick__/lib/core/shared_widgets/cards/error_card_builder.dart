import 'package:flutter/material.dart';

class ErrorCardBuilder extends StatelessWidget {
  const ErrorCardBuilder({super.key, required this.errorMsg});
  final String errorMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMsg,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.red,
        ),
      ),
    );
  }
}
