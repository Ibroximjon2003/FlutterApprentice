import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Colors.grey,
              secondary: Colors.black,
            ),
      ),
      home: const MyHomePage(title: 'Recipe calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({this.title});
  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: ((context, index) =>
              buildRecipeCard(Recipe.samples[index])),
          itemCount: Recipe.samples.length,
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    child: Column(
      children: [
        Image(image: AssetImage(recipe.imageUrl)),
        Text(recipe.label),
      ],
    ),
  );
}
