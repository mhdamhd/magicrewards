import 'package:flutter/material.dart';

class AppAnimatedContainer extends StatefulWidget {
  final double height;
  final double initHeight;
  final double width;
  final BoxDecoration? decoration;
  final Widget? child;

  const AppAnimatedContainer(
      {Key? key,
      required this.height,
      required this.initHeight,
      required this.width,
      this.decoration,
      this.child})
      : super(key: key);

  @override
  State<AppAnimatedContainer> createState() => _AppAnimatedContainerState();
}

class _AppAnimatedContainerState extends State<AppAnimatedContainer> {
  bool expanded = false;

  @override
  void initState() {
    super.initState();

    // Delay the animation using a Future to allow the widget to build first
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        expanded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.bottomCenter,
      duration: const Duration(seconds: 1),
      // Set the animation duration
      curve: Curves.fastOutSlowIn,
      // Set the animation curve
      height: expanded ? widget.height : widget.initHeight,
      // Toggle height based on the 'expanded' state
      width: widget.width,
      decoration: widget.decoration,
      child: widget.child,
    );
  }
}
