import "package:flutter/material.dart";

import "gradient_container.dart";
import "dice_roller.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [Color.fromARGB(255, 33, 5, 109), Color.fromARGB(255, 68, 21, 149)],
          alignments: {"begin": Alignment.topLeft, "end": Alignment.bottomRight},
          child: Center(
            child: DiceRoller(),
          ),
        ),
      ),
    ),
  );
}
