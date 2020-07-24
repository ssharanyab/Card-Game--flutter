import 'package:flutter/material.dart';

void main() => runApp(CardGame());

class CardGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Game',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Score:-"),
            Text("0"),
            Text("Points"),
            SizedBox(
              height : 20,
            ),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisSpacing:0.0,
                maxCrossAxisExtent: 100 
                ),
              ),
          ],
        )
        ),
    );
  }
}

class Tile extends StatefulWidget {
  String imageAssetPath,
  selected;
  _HomePageState parent;
  Tile({this.imageAssetPath,this.selected, this.parent})

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Image.asset(widget.imageAssetPath),
      
    );
  }
}
