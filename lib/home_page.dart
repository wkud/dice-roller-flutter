import 'package:flutter/material.dart';
import './dice_button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final diceTypes = [100, 20, 12, 10, 8, 6, 4, 3, 2];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final buttons = ['d100', 'd20', 'd12', 'd10', 'd8', 'd6', 'd4', 'd3', 'd2'];
  // final buttons = <DiceButton>[DiceButton()];
  final List<String> items = List<String>.generate(10000, (i) => "Item $i");
  // final buttons =
  //     List<DiceButton>.generate(9, (int index) => DiceButton(diceTypes[index]));

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Let's role some dice!",
              style:
                  TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.5)),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '= 120',
                // '$_counter',
                style: TextStyle(
                    fontSize: 80, color: Colors.black.withOpacity(0.5)),
              ),
            ),
            Container(
              height: 190,
              width: 1000,
              child: GridView.count(
                childAspectRatio: 2,
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 30,
                children: List.generate(
                  9,
                  (index) => SizedBox(
                    width: 10.0,
                    height: 80.0,
                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: const Text(
                        'd100',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
