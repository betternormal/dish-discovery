// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recipeHash() => r'1e34029bc59592c98d0eb0807a61b9ffcac8452e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [recipe].
@ProviderFor(recipe)
const recipeProvider = RecipeFamily();

/// See also [recipe].
class RecipeFamily extends Family<AsyncValue<RecipeListRes>> {
  /// See also [recipe].
  const RecipeFamily();

  /// See also [recipe].
  RecipeProvider call(
    String dish,
  ) {
    return RecipeProvider(
      dish,
    );
  }

  @override
  RecipeProvider getProviderOverride(
    covariant RecipeProvider provider,
  ) {
    return call(
      provider.dish,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'recipeProvider';
}

/// See also [recipe].
class RecipeProvider extends AutoDisposeFutureProvider<RecipeListRes> {
  /// See also [recipe].
  RecipeProvider(
    String dish,
  ) : this._internal(
          (ref) => recipe(
            ref as RecipeRef,
            dish,
          ),
          from: recipeProvider,
          name: r'recipeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recipeHash,
          dependencies: RecipeFamily._dependencies,
          allTransitiveDependencies: RecipeFamily._allTransitiveDependencies,
          dish: dish,
        );

  RecipeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dish,
  }) : super.internal();

  final String dish;

  @override
  Override overrideWith(
    FutureOr<RecipeListRes> Function(RecipeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RecipeProvider._internal(
        (ref) => create(ref as RecipeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dish: dish,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RecipeListRes> createElement() {
    return _RecipeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RecipeProvider && other.dish == dish;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dish.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RecipeRef on AutoDisposeFutureProviderRef<RecipeListRes> {
  /// The parameter `dish` of this provider.
  String get dish;
}

class _RecipeProviderElement
    extends AutoDisposeFutureProviderElement<RecipeListRes> with RecipeRef {
  _RecipeProviderElement(super.provider);

  @override
  String get dish => (origin as RecipeProvider).dish;
}

String _$recipeDetailHash() => r'a0405b8f61809130b4f9abcdcbdabf821e31093b';

/// See also [recipeDetail].
@ProviderFor(recipeDetail)
const recipeDetailProvider = RecipeDetailFamily();

/// See also [recipeDetail].
class RecipeDetailFamily extends Family<AsyncValue<Recipe>> {
  /// See also [recipeDetail].
  const RecipeDetailFamily();

  /// See also [recipeDetail].
  RecipeDetailProvider call(
    String id,
  ) {
    return RecipeDetailProvider(
      id,
    );
  }

  @override
  RecipeDetailProvider getProviderOverride(
    covariant RecipeDetailProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'recipeDetailProvider';
}

/// See also [recipeDetail].
class RecipeDetailProvider extends AutoDisposeFutureProvider<Recipe> {
  /// See also [recipeDetail].
  RecipeDetailProvider(
    String id,
  ) : this._internal(
          (ref) => recipeDetail(
            ref as RecipeDetailRef,
            id,
          ),
          from: recipeDetailProvider,
          name: r'recipeDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recipeDetailHash,
          dependencies: RecipeDetailFamily._dependencies,
          allTransitiveDependencies:
              RecipeDetailFamily._allTransitiveDependencies,
          id: id,
        );

  RecipeDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Recipe> Function(RecipeDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RecipeDetailProvider._internal(
        (ref) => create(ref as RecipeDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Recipe> createElement() {
    return _RecipeDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RecipeDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RecipeDetailRef on AutoDisposeFutureProviderRef<Recipe> {
  /// The parameter `id` of this provider.
  String get id;
}

class _RecipeDetailProviderElement
    extends AutoDisposeFutureProviderElement<Recipe> with RecipeDetailRef {
  _RecipeDetailProviderElement(super.provider);

  @override
  String get id => (origin as RecipeDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
