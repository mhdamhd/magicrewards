import 'package:flutter/material.dart';

class HomeLoader extends StatelessWidget {
  const HomeLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
