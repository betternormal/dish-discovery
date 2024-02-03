import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/recipe.dart';
import '../model/recipe_list_res.dart';
part 'recipe_provider.g.dart';

const baseHost = 'dummyjson.com';

@riverpod
Future<RecipeListRes> recipe(RecipeRef ref, String dish) async {
  final response = await http.get(
    Uri(
      scheme: 'https',
      host: baseHost,
      path: '/recipes/search',
      queryParameters: {'q': dish},
    ),
  );
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return RecipeListRes.fromJson(json);
}

@riverpod
Future<Recipe> recipeDetail(RecipeDetailRef ref, String id) async {
  final response = await http.get(
    Uri(
      scheme: 'https',
      host: baseHost,
      path: '/recipes/$id',
    ),
  );
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return Recipe.fromJson(json);
}
