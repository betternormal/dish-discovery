// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_list_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeListResImpl _$$RecipeListResImplFromJson(Map<String, dynamic> json) =>
    _$RecipeListResImpl(
      total: json['total'] as int,
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecipeListResImplToJson(_$RecipeListResImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'recipes': instance.recipes,
    };
