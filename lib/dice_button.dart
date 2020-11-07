import 'package:flutter/material.dart';

class DiceButton extends StatefulWidget {
  DiceButton({Key key, this.diceType}) : super(key: key);

  final int diceType;
  @override
  _DiceButtonState createState() => _DiceButtonState();
}

class _DiceButtonState extends State<DiceButton> {
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: null,
        child: Center(
            child: Text(
          'd${widget.diceType}',
          style: Theme.of(context).textTheme.headline5,
        )));
  }
}
