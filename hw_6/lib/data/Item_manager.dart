import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hw_6/model/user_model.dart';

class ItemManager {
  final GetStorage box = GetStorage();

  List<UserModel> items = [];

  ItemManager(){
    loadItems();
  }


  void loadItems() {
    var storedItems = box.read<List<dynamic>>('items') ?? [];

    items = storedItems.map<UserModel>((item) => UserModel.fromJson(item)).toList();
  }

  void saveItems() {
    box.write('items', items.map((item) => item.toJson()).toList());
  }

  void addItem(UserModel newItem) {
    items.add(newItem);
    saveItems();
  }

  void removeItem() {
    box.erase();
    items.clear();
    saveItems();
  }
}
