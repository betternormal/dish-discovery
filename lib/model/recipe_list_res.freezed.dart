// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_list_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeListRes _$RecipeListResFromJson(Map<String, dynamic> json) {
  return _RecipeListRes.fromJson(json);
}

/// @nodoc
mixin _$RecipeListRes {
  int get total => throw _privateConstructorUsedError;
  List<Recipe> get recipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeListResCopyWith<RecipeListRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListResCopyWith<$Res> {
  factory $RecipeListResCopyWith(
          RecipeListRes value, $Res Function(RecipeListRes) then) =
      _$RecipeListResCopyWithImpl<$Res, RecipeListRes>;
  @useResult
  $Res call({int total, List<Recipe> recipes});
}

/// @nodoc
class _$RecipeListResCopyWithImpl<$Res, $Val extends RecipeListRes>
    implements $RecipeListResCopyWith<$Res> {
  _$RecipeListResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? recipes = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeListResImplCopyWith<$Res>
    implements $RecipeListResCopyWith<$Res> {
  factory _$$RecipeListResImplCopyWith(
          _$RecipeListResImpl value, $Res Function(_$RecipeListResImpl) then) =
      __$$RecipeListResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, List<Recipe> recipes});
}

/// @nodoc
class __$$RecipeListResImplCopyWithImpl<$Res>
    extends _$RecipeListResCopyWithImpl<$Res, _$RecipeListResImpl>
    implements _$$RecipeListResImplCopyWith<$Res> {
  __$$RecipeListResImplCopyWithImpl(
      _$RecipeListResImpl _value, $Res Function(_$RecipeListResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? recipes = null,
  }) {
    return _then(_$RecipeListResImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeListResImpl
    with DiagnosticableTreeMixin
    implements _RecipeListRes {
  const _$RecipeListResImpl(
      {required this.total, required final List<Recipe> recipes})
      : _recipes = recipes;

  factory _$RecipeListResImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeListResImplFromJson(json);

  @override
  final int total;
  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeListRes(total: $total, recipes: $recipes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeListRes'))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('recipes', recipes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListResImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeListResImplCopyWith<_$RecipeListResImpl> get copyWith =>
      __$$RecipeListResImplCopyWithImpl<_$RecipeListResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeListResImplToJson(
      this,
    );
  }
}

abstract class _RecipeListRes implements RecipeListRes {
  const factory _RecipeListRes(
      {required final int total,
      required final List<Recipe> recipes}) = _$RecipeListResImpl;

  factory _RecipeListRes.fromJson(Map<String, dynamic> json) =
      _$RecipeListResImpl.fromJson;

  @override
  int get total;
  @override
  List<Recipe> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$RecipeListResImplCopyWith<_$RecipeListResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
