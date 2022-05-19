class Plant{
  String plantName;
  String imgUrl;
  double price;

  Plant(this.plantName,this.imgUrl, this.price);

  static List<Plant> generatePlantList(){
    return[
      Plant("Areca","assets/images/p2.jpg", 34.50),
      Plant("English Ivy","assets/images/p5.jpg", 45.50),
      Plant("Indian Basil","assets/images/p3.jpg", 65.50),
      Plant("Dracaena","assets/images/p4.jpg", 12.50),
      Plant("Azalea","assets/images/p1.jpg", 30.50),
    ];
  }
  static List<Plant> featuredPlantList(){
    return[
      Plant("Areca","assets/images/p6.jpg", 50.50),
      Plant("English Ivy","assets/images/p7.jpg", 40.50),
      Plant("Indian Basil","assets/images/p8.jpg", 22.50),
      Plant("Dracaena","assets/images/p9.jpg", 39.50),
      Plant("Azalea","assets/images/p10.jpg", 46.50),
    ];
  }
}