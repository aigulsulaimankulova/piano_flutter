import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({
    this.visible = true,
    Key? key,
  }) : super(key: key);
  final bool visible;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Visibility(
        visible: visible,
        child: SizedBox(
          width: 65,
          height: 150,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.black),
                overlayColor: MaterialStateProperty.resolveWith((states) {
                  return states.contains(MaterialState.pressed)
                      ? Colors.black12
                      : null;
                })),
            onPressed: () {},
            child: const Text('F3'),
          ),
        ),
      ),
    );
  }
}
