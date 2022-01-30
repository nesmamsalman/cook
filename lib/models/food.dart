//models
class Food {
  int id;
  String name;
  bool isFavorites;
  String way;
  String component;
  String image;
  Food(
      {this.id,
      this.name,
      this.isFavorites = false,
      this.way,
      this.component,
      this.image});
  Food.fromMap(Map map) {
    this.id = map['id'];
    this.name = map['name'];
    this.isFavorites = map['isFavorite'] == 1 ? true : false;
    this.way = map['way'];
    this.component = map['isFavorite'];
    this.image = map['image'];
  }
  toMap() {
    return {
      'title': this.name,
      'isFavorite': this.isFavorites ? 1 : 0,
      'way': this.way,
      'component': this.component,
      'image': this.image
    };
  }
}
