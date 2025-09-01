class Recipe {
  late String title;
  late String description;
  late List<String> ingredients;

  Recipe();

  Recipe.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    ingredients = List<String>.from(json['ingredients']);
  }
}
