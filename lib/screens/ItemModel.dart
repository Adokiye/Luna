class ItemModel {
  bool isExpanded;
  String header;
  BodyModel bodyModel;

  ItemModel({this.isExpanded: false, this.header, this.bodyModel});
}

class BodyModel {
  String title1;
  String title2;
  int id;
  BodyModel({this.title1, this.title2, this.id});
}