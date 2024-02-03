import 'package:dish_discovery/screen/widgets/grey_round_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../model/recipe.dart';
import '../model/recipe_list_res.dart';
import '../provider/recipe_provider.dart';

class RecipeList extends StatefulWidget {
  const RecipeList({super.key});

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Recipe List'),
        ),
        body: Consumer(
          builder: (context, ref, child) {
            final AsyncValue<RecipeListRes> recipe =
                ref.watch(recipeProvider(_searchController.text));
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _searchController,
                      onSubmitted: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffix: GestureDetector(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              _searchController.clear();
                            },
                            child: Icon(Icons.clear)),
                        border: OutlineInputBorder(),
                        labelText: 'Search',
                      ),
                    ),
                  ),
                ),
                switch (recipe) {
                  AsyncData(:final value) => SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final Recipe recipe = value.recipes[index];
                          return Card(
                            child: ListTile(
                              onTap: () {
                                context.go('/recipe/${recipe.id}');
                              },
                              leading: Image.network(recipe.image),
                              title: Text(recipe.name),
                              subtitle: Wrap(
                                spacing: 2.0,
                                runSpacing: 2.0,
                                children: recipe.mealType
                                    .map((tag) => GreyRoundTag(title: tag))
                                    .toList(),
                              ),
                            ),
                          );
                        },
                        childCount: value.recipes.length,
                      ),
                    ),
                  AsyncError() => const SliverFillRemaining(
                      child: Center(child: Text('Oops, something unexpected happened'))),
                  _ => const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator())),
                }
              ],
            );
          },
        ),
      ),
    );
  }
}
