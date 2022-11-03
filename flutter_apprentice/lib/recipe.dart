class Recipe {
  Recipe(this.label, this.imageUrl);
  String label;
  String imageUrl;
  // TODO:  Add servings and ingredients here
  // TODO:  Add List<Recipe> here
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/spagetti.jpg',
    ),
    Recipe(
      'Tomato Soup',
      'assets/tomato_soup.jpg',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/grilled_cheese.jpg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/chocolate_chip_cookies.jpg',
    ),
    Recipe(
      'Taco Salad',
      'assets/taco_salad.jpg',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/hawaiian_pizza.jpg',
    ),
  ];
}
// TODO:  Add Ingredient() here