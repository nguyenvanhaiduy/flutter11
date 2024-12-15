import 'dart:developer';

class Food {
  final String id;
  final String name;
  final FoodType type;
  final double price;

  Food(
      {required this.id,
      required this.name,
      required this.type,
      required this.price});
}

class Supplier {
  final String id;
  final String name;
  final Origin origin;
  final List<Food> foods;
  Supplier({
    required this.id,
    required this.name,
    required this.origin,
    required this.foods,
  });

  List<Food> getFoodsByOrigin(Origin origin) {
    return foods.where((food) => this.origin == origin).toList();
  }

  double get totalFoodPriceDiet {
    double total = 0;
    for (int i = 0; i < foods.length; i++) {
      if (foods[i].type == FoodType.diet) {
        total += foods[i].price;
      }
    }
    return total;
  }
}

enum FoodType {
  diet,
  fat,
  vegan,
}

enum Origin {
  Asian,
  Europe,
  Africa,
}

void main() {
  List<Food> foods = [
    Food(id: 'f01', name: "Cơm gà", type: FoodType.fat, price: 30000),
    Food(id: 'f02', name: "Bún chả", type: FoodType.fat, price: 30000),
    Food(id: 'f03', name: "Bánh mỳ chay", type: FoodType.diet, price: 10000),
    Food(id: 'f04', name: "Bánh mì", type: FoodType.vegan, price: 15000),
    Food(id: 'f05', name: "Gà rán", type: FoodType.fat, price: 40000),
    Food(id: 'f06', name: "Sữa chua", type: FoodType.diet, price: 10000),
    Food(id: 'f07', name: "Gà ủ muối", type: FoodType.fat, price: 50000),
  ];

  List<Supplier> suppliers = [
    Supplier(
        id: '1',
        name: "Nhà cung cấp 1",
        origin: Origin.Asian,
        foods: foods.sublist(0, 3)),
    Supplier(
        id: '2',
        name: "Nhà cung cấp 2",
        origin: Origin.Europe,
        foods: foods.sublist(3, 5)),
    Supplier(
        id: '3',
        name: "Nhà cung cấp 3",
        origin: Origin.Africa,
        foods: foods.sublist(5)),
  ];

  log("Danh sách đồ ăn của từng nhà cung cấp theo 3 loại châu á, châu âu, châu phi:");
  for (var supplier in suppliers) {
    log(
      "Nhà cung cấp ${supplier.name} (${supplier.origin.name}): ${supplier.getFoodsByOrigin(supplier.origin)}",
    );
  }

  log('\n');
  log("Tổng số tiền của các đồ ăn chay của từng nhà cung cấp:");
  for (var supplier in suppliers) {
    log("Nhà cung cấp ${supplier.name}: ${supplier.totalFoodPriceDiet}");
  }
}
