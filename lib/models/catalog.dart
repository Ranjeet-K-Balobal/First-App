class CatalogModel{
  static final items=[Item(
    id: "Ranjeet01",
    name:"Agent APP",
    desc:"First app",
    color: "#33505a",
    image: "https://www.logolynx.com/images/logolynx/ea/ea9e24348d506bffb57001999442ca17.png",

)];

} 



class Item{
  final String id;
  final String name;
  final String desc;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc , required this.color, required this.image});
}

