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
  List<TileModel> pairs = new List<TileModel>();
  List<TileModel> visiblePairs = new List<TileModel>();
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    pairs = getPairs();
    pairs.shuffle();
    visiblePairs = pairs;
    selected = true;
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        visiblePairs = getQuestions();
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                "$points",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              Text("Points"),
              SizedBox(
                height: 20,
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: 0.0, maxCrossAxisExtent: 100),
                children: List.generate(visiblePairs.length, (index) {
                  return Tile(
                    imageAssetPath: visiblePairs[index].getImageAssetPath(),
                    selected: visiblePairs[index].getIsSelected(),
                    parent: this,
                  );
                }),
              )
            ],
          )),
    );
  }
}

class Tile extends StatefulWidget {
  String imageAssetPath;
  bool selected;
  _HomePageState parent;
  Tile({this.imageAssetPath, this.selected, this.parent});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if(!selected){

          }
        },
        child: Container(
          margin: EdgeInsets.all(5),
          child: widget.selected ? Image.asset(widget.imageAssetPath):
        ));
  }
}
