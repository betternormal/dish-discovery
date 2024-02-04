import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/recipe.dart';
import '../provider/recipe_provider.dart';
import 'widgets/detail_row.dart';

class RecipeDetail extends StatelessWidget {
  final String id;
  const RecipeDetail({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final AsyncValue<Recipe> recipe = ref.watch(recipeDetailProvider(id));
        return Scaffold(
            body: switch (recipe) {
          AsyncData(:final value) => CustomScrollView(
              slivers: [
                SliverAppBar(
                  flexibleSpace: Image.network(
                    value.image,
                    fit: BoxFit.cover,
                  ),
                  expandedHeight: 200,
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            value.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          DetailRow(title: "prepTimeMinutes", value: "${value.prepTimeMinutes}"),
                          DetailRow(title: "cookTimeMinutes", value: "${value.cookTimeMinutes}"),
                          DetailRow(title: "servings", value: "${value.servings}"),
                          DetailRow(title: "difficulty", value: "${value.difficulty}"),
                          DetailRow(title: "cuisine", value: "${value.cuisine}"),
                          DetailRow(title: "caloriesPerServing", value: "${value.caloriesPerServing}"),
                        ],
                      ),
                    ),
                  ]),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ListTile(
                        title: Text("${index + 1}. ${value.instructions[index]}"),
                      );
                    },
                    childCount: value.instructions.length,
                  ),
                )
              ],
            ),
          AsyncError() =>
            const Center(child: Text('Oops, something unexpected happened')),
          _ => const Center(child: CircularProgressIndicator()),
        });
      },
    );
  }
}
