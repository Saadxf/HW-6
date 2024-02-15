import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hw_6/data/Item_manager.dart';
import 'package:hw_6/model/user_model.dart';

Future<void> setup() async {
  await GetStorage.init();
  
  GetIt.instance;
  GetIt.I.registerSingleton<ItemManager>(ItemManager());
}
