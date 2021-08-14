class Movie {
  String? name;
  String? details;
  String? imgUrl;

  Movie({this.name, this.details, this.imgUrl});

  Movie.fromJson(json) {
    this.name = json['name'];
    this.details = json['details'];
    this.imgUrl = json['imgUrl'];
  }
}
