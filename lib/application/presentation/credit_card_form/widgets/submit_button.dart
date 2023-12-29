import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoButton.filled(
        onPressed: () {},
        child: const Text("Validate"),
      );
    } else {
      return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 50),
        ),
        child: const Text("Validate"),
      );
    }
  }
}
