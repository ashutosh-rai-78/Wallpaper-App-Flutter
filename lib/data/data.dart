import 'package:wallpaper_app/model/categories_model.dart';

List<CategoriesModel> getCategories() {
  // List<CategoriesModel> categories = new List();
  List<CategoriesModel> categories = [];

  CategoriesModel categoriesModel = new CategoriesModel();
//
  categoriesModel.categoryName = "Abstract";
  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/2471234/pexels-photo-2471234.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
  //
  categoriesModel.categoryName = "Nature";
  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.categoryName = "Cars";
  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/3311574/pexels-photo-3311574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.categoryName = "Bike";
  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/1413412/pexels-photo-1413412.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.categoryName = "Art";
  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/2471234/pexels-photo-2471234.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  return categories;
}
