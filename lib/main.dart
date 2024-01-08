import "package:flutter/material.dart";

import "large_text.dart";
import "gradient_container.dart";

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        colors: [Colors.blue, Colors.green],
        alignments: {
          "begin": Alignment.topLeft,
          "end": Alignment.bottomRight
        },
        child: Center(
          child: LargeText(
              text: "Hello World !",
              color: Colors.white
          ),
        ),
      ),
    ),
  ));
}

