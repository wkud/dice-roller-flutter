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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 110,
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text(
                "Let's role some dice!",
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '= 120',
                  // '$_counter',
                  style: TextStyle(
                    fontSize: 80,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 190,
              width: 1000,
              child: GridView.count(
                childAspectRatio: 2.2,
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                children: List.generate(
                  9,
                  (index) => ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Text('d${widget.diceTypes[index]}'),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Roll',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
