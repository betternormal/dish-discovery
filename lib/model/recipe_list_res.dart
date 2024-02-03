import 'package:dish_discovery/model/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'recipe_list_res.freezed.dart';
part 'recipe_list_res.g.dart';

@freezed
class RecipeListRes with _$RecipeListRes {
  const factory RecipeListRes({
    required int total,
    required List<Recipe> recipes,
  }) = _RecipeListRes;

  factory RecipeListRes.fromJson(Map<String, Object?> json)
  => _$RecipeListResFromJson(json);
}