import 'package:dish_discovery/screen/recipe_detail.dart';
import 'package:go_router/go_router.dart';
import '../screen/recipe_list.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => RecipeList(),
      routes: [
        GoRoute(
          path: 'recipe/:index',
          builder: (context, state) {
            final id = state.pathParameters['index']!;
            return RecipeDetail(id: id);
          },
        ),
      ],
    ),
  ],
);
