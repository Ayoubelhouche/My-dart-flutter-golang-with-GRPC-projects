import 'package:dart_grpc_server/dart_grpc_server.dart';

abstract class IItemsServices {
  factory IItemsServices() => ItemsServices();
  Item? getItemByName(String name) {
    Item? getItemById(int id) {}
    Item? createItem(Item item) {}
    Item? editItem(Item item) {}
    Item? deleteItem(Item item) {}
    List<Item>? getItems() {}
    List<Item>? getItemsByCategory(int categoryId) {}

    final itemsServices = IItemsServices();
  }
}
