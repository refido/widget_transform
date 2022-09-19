import 'package:flutter/material.dart';
import 'package:widget_transform/main.dart';

class PerspectiveWidget extends StatelessWidget {
  const PerspectiveWidget({super.key});
  final Offset _offset = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001) // perspective
        ..rotateX(_offset.dy)
        ..rotateY(_offset.dx),
      alignment: FractionalOffset.center,
      child: const MyApp(),
    );
  }
}
