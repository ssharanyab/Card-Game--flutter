import 'package:card_game/module/tile_module.dart';

List<TileModel>getPairs(){
  List<TileModel> pairs = new List<TileModel>();
  TileModel tileModel = new TileModel(); 
  // 1
  tileModel.setImageAssetPath("assets/apple.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  // 2
  tileModel = new TileModel(); 
  tileModel.setImageAssetPath("assets/strawberry.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  // 3
  tileModel = new TileModel(); 
  tileModel.setImageAssetPath("assets/watermelon.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  // 4
  tileModel = new TileModel(); 
  tileModel.setImageAssetPath("assets/apricot.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  // 5
  tileModel = new TileModel(); 
  tileModel.setImageAssetPath("assets/grapes.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  // 6
  tileModel = new TileModel(); 
  tileModel.setImageAssetPath("assets/kiwi.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  // 7
  tileModel = new TileModel(); 
  tileModel.setImageAssetPath("assets/pineapple.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  // 8
  tileModel = new TileModel(); 
  tileModel.setImageAssetPath("assets/raspberry.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  return pairs;
  
}