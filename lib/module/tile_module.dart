class TileModel{
  String imageAssetPath;
  bool isSelected;

  TileModel({this.imageAssetPath, this.isSelected});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath= getImageAssetPath;
  }
  void setIsselected(bool getIsSelected){
    isSelected=getIsSelected;
  }
  String getImageAssetPath(){
    return imageAssetPath;
  }
  bool getIsSelected(){
    return isSelected;
  }

}

