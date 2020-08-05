import 'package:card_game/data/data.dart';
import 'package:card_game/module/tile_module.dart';
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
  List<TileModel> pairs =new List<TileModel>();
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    pairs = getPairs();
    pairs.shuffle();
  }

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
                children: List.generate(pairs.length, (index){
                  return Tile(
                   imageAssetPath: pairs[index].getImageAssetPath(),
                   selected : pairs[index].getIsSelected(),
                   parent: this,
                  );
                }),
            )
          ],
        )
        ),
    );
  }
}

class Tile extends StatefulWidget {
  String imageAssetPath;
  bool selected;
  _HomePageState parent;
  Tile({this.imageAssetPath,this.selected, this.parent});

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
