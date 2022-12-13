import 'package:flutter/material.dart';
import 'package:piano_flutter/components/black_button.dart';
import 'package:piano_flutter/components/white_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Flutter Piano'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('do re mi fa'),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                      ],
                    ),
                    Positioned(
                        left: 45.0,
                        right: 0.0,
                        child: Row(
                          children: const [
                            PianoBlackButton(),
                            PianoBlackButton(),
                            PianoBlackButton(),
                            PianoBlackButton(
                              visible: false,
                            ),
                            PianoBlackButton(),
                          ],
                        ))
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

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
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {},
            child: const Text('F3'),
          ),
        ),
      ),
    );
  }
}
