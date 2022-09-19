import 'dart:math';
import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.rotate(
          angle: -45 * (pi / 180.0),
          child: ElevatedButton(
            child: const Text("Rotated button"),
            onPressed: () {},
          ),
        ),
        Transform(
          transform: Matrix4.rotationZ(-45 * (pi / 180.0)),
          alignment: Alignment.center,
          child: ElevatedButton(
            child: const Text("Rotated button"),
            onPressed: () {},
          ),
        ),
        Transform.scale(
          scale: 2.0,
          child: ElevatedButton(
            child: const Text("scaled up"),
            onPressed: () {},
          ),
        ),
        Transform(
          transform: Matrix4.identity()..scale(2.0, 2.0),
          alignment: Alignment.center,
          child: ElevatedButton(
            child: const Text("scaled up (matrix)"),
            onPressed: () {},
          ),
        ),
        Transform.translate(
          offset: const Offset(100, 300),
          child: ElevatedButton(
            child: const Text("translated to bottom"),
            onPressed: () {},
          ),
        ),
        Transform(
          transform: Matrix4.translationValues(100, 300, 0),
          child: ElevatedButton(
            child: const Text("translated to bottom (matrix)"),
            onPressed: () {},
          ),
        ),
        Transform.translate(
          offset: const Offset(70, 200),
          child: Transform.rotate(
            angle: -45 * (pi / 180.0),
            child: Transform.scale(
              scale: 2.0,
              child: ElevatedButton(
                child: const Text("multiple transformations"),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.translationValues(70, 200, 0)
            ..rotateZ(-45 * (pi / 180.0))
            ..scale(2.0, 2.0),
          child: ElevatedButton(
            child: const Text("multiple transformations (matrix)"),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
