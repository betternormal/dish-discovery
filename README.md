# Flutter Dish Discovery App

A Flutter application allows users to explore various dishes and recipes. 

## Screenshots
<img src="./screenshots/recipe_list.png" alt="Recipe List" width="250">
<img src="./screenshots/recipe_search.png" alt="Recipe Search" width="250">
<img src="./screenshots/recipe_detail.png" alt="Recipe Detail.png" width="250">

## How to run
```
git clone https://github.com/betternormal/dish-discovery.git
cd dish-discovery
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

## Features
- State management using Riverpod
- Route management using go_router
- Recipe list search with query param
- Recipe search with path param

## Built With
- [Flutter](https://flutter.dev/)
- [DummyJSON](https://dummyjson.com/)
  