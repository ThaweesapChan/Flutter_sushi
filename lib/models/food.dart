class Food {
  String name;
  String price;
  String imagePath;
  String rating;

  Food({
    this.name = "inputName",
    this.price = "inputPrice",
    this.imagePath = "inputImagePath",
    this.rating = "inputRating",
  });
 
  String get _Name => name;
  String get _Price => price;
  String get _ImagePath => imagePath;
  String get _Rating => rating;
}
