class DonutsItem {
  String imagePath;
  String donutName;
  double donutPrice;
  bool _isLiked = false;
  String donutDescription;

  bool get isLiked => _isLiked;

  set isLiked(bool value) {
    _isLiked = value;
  }

  DonutsItem({
    required this.imagePath,
    required this.donutName,
    required this.donutDescription,
    required this.donutPrice,
  });
}
