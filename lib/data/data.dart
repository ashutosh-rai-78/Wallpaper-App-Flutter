import 'package:wallpaper_app/model/categories_model.dart';

List<CategoriesModel> getCategories() {
  // List<CategoriesModel> categories = new List();
  List<CategoriesModel> categories = [];

  CategoriesModel categoriesModel = new CategoriesModel();
//
  categoriesModel.categoryName = "Abstract";
  categoriesModel.imageUrl =
      "https://www.pexels.com/photo/blue-and-pink-artwork-2471234/";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
  //
  categoriesModel.categoryName = "Nature";
  categoriesModel.imageUrl =
      "https://www.pexels.com/photo/beautiful-view-of-moraine-lake-2662116/";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel(); 
  
  //
  categoriesModel.categoryName = "Cars";
  categoriesModel.imageUrl =
      "https://www.pexels.com/photo/black-dodge-challenger-coupe-3311574/";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel(); 
  
  //
  categoriesModel.categoryName = "Bike";
  categoriesModel.imageUrl =
      "https://www.pexels.com/photo/close-up-photography-of-parked-motorcycle-1413412/";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel(); 
  
  //
  categoriesModel.categoryName = "Art";
  categoriesModel.imageUrl =
      "https://www.pexels.com/photo/blue-and-pink-artwork-2471234/";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  return categories;
}
