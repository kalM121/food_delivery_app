import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gebeta_food_app/model/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //injera

    Food(
      name: "Aynet(fasting)",
      description:
          "Ethiopian stew of ground chickpeas/lentils, spices, onions, garlic. Served with injera. Rich, flavorful, cultural staple",
      imagePath: "lib/images/injera/aynet.png",
      price: 10.0,
      category: FoodCategory.injera,
      availableAddons: [
        Addon(name: "Extra Injera", price: 1.0),
        Addon(name: "Sambusa", price: 0.9),
        Addon(name: "Yogurt", price: 1.5),
        Addon(name: "Hot Sauce", price: 0.5),
      ],
    ),
    Food(
      name: " Doro Wot",
      description:
          "Ethiopian Doro Wot is a rich, aromatic sauce essential in Ethiopian cuisine. It features chicken simmered in a flavorful blend of spices, onions, garlic, and berbere, boasting a spicy-savory taste, traditionally served with injera or rice during special occasions.",
      imagePath: "lib/images/injera/doro.png",
      price: 14.0,
      category: FoodCategory.injera,
      availableAddons: [
        Addon(name: "Extra Injera", price: 1.0),
        Addon(name: "Yogurt", price: 1.5),
        Addon(name: "Sambusa", price: 0.9),
        Addon(name: "Hot Sauce", price: 0.5),
      ],
    ),
    Food(
      name: " Kittfo",
      description:
          "Kittfo is a traditional Ethiopian dish consisting of finely chopped raw beef, typically seasoned with spices like mitmita (a chili powder blend) and niter kibbeh (clarified butter infused with spices). It's often served with a side of cottage cheese and injera, a sourdough flatbread. This dish offers a unique blend of flavors and textures, with the raw beef providing a tender and rich taste experience.",
      imagePath: "lib/images/injera/kitfo.png",
      price: 15.0,
      category: FoodCategory.injera,
      availableAddons: [
        Addon(name: "Extra Injera", price: 1.0),
        Addon(name: "Sambusa", price: 0.9),
        Addon(name: "Yogurt", price: 1.5),
        Addon(name: "Hot Sauce", price: 0.5),
      ],
    ),
    Food(
      name: "Mahberawi",
      description:
          "Mahberawi is a traditional Ethiopian platter that offers a diverse selection of dishes, allowing diners to experience a variety of flavors and textures in one meal. It typically includes a combination of meat and vegetable dishes such as doro wot (spicy chicken stew), tibs (sauteed meat), atakilt wat (spiced cabbage and carrots), gomen (collard greens), and shiro (chickpea stew). Mahberawi is often served with injera, a sourdough flatbread, and provides a communal dining experience, allowing friends and family to share and enjoy a range of Ethiopian culinary delights together.",
      imagePath: "lib/images/injera/mahberawi.jpg",
      price: 20.0,
      category: FoodCategory.injera,
      availableAddons: [
        Addon(name: "Extra Injera", price: 1.0),
        Addon(name: "Sambusa", price: 0.9),
        Addon(name: "Yogurt", price: 1.5),
        Addon(name: "Hot Sauce", price: 0.5),
      ],
    ),

    Food(
      name: "Shero",
      description:
          "Shiro, a staple dish in Ethiopian cuisine, is a flavorful chickpea stew made from ground chickpeas or lentils cooked with a blend of spices such as garlic, onions, and berbere. This savory stew offers a creamy texture and is often served as a vegetarian or vegan option alongside injera, a traditional sourdough flatbread. Shiro's versatility allows it to be enjoyed as a main dish or as a side dish in a communal meal, contributing to the rich tapestry of flavors found in Ethiopian cuisine.",
      imagePath: "lib/images/injera/shero.webp",
      price: 8.0,
      category: FoodCategory.injera,
      availableAddons: [
        Addon(name: "Extra Injera", price: 1.0),
        Addon(name: "Sambusa", price: 0.9),
        Addon(name: "Yogurt", price: 1.5),
        Addon(name: "Hot Sauce", price: 0.5),
      ],
    ),
    //desserts
    Food(
      name: "Chocolate Cake",
      description: "Decadent chocolate cake with creamy frosting.",
      price: 5.0,
      imagePath: "lib/images/desserts/chocolate.jpeg",
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.0),
        Addon(name: "Chocolate Ganache", price: 0.75),
        Addon(name: "Raspberry Sauce", price: 0.5),
        Addon(name: "Caramel Drizzle", price: 0.5),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description: "Vanilla ice cream topped with hot fudge and nuts.",
      price: 4.0,
      imagePath: "lib/images/desserts/icecream.jpeg",
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.5),
        Addon(name: "Maraschino Cherry", price: 0.25),
        Addon(name: "Sprinkles", price: 0.25),
        Addon(name: "Waffle Cone", price: 0.75),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Creamy cheesecake with graham cracker crust.",
      price: 6.0,
      imagePath: "lib/images/desserts/cheese_cake.jpeg",
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Mixed Berry Compote", price: 1.0),
        Addon(name: "Lemon Zest", price: 0.5),
        Addon(name: "Toasted Coconut", price: 0.75),
        Addon(name: "White Chocolate Shavings", price: 0.5),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "Homemade apple pie with cinnamon and sugar.",
      price: 5.0,
      imagePath: "lib/images/desserts/Apple_pie.jpeg",
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Bean Ice Cream", price: 1.0),
        Addon(name: "Caramel Sauce", price: 0.75),
        Addon(name: "Streusel Topping", price: 0.5),
        Addon(name: "Whipped Cream", price: 0.5),
      ],
    ),
    Food(
      name: "Tiramisu",
      description: "Classic Italian dessert made with coffee and mascarpone.",
      price: 7.0,
      imagePath: "lib/images/desserts/Tiramisu.jpeg",
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Espresso Shot", price: 0.75),
        Addon(name: "Cocoa Powder", price: 0.5),
        Addon(name: "Marsala Wine", price: 1.0),
        Addon(name: "Ladyfingers", price: 0.5),
      ],
    ),
    //drinks
    Food(
      name: "Cola",
      description: "Classic carbonated soft drink.",
      price: 2.0,
      imagePath: "lib/images/drinks/cola.jpeg",
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Ice", price: 0.25),
        Addon(name: "Lemon Slice", price: 0.5),
        Addon(name: "Mint Leaves", price: 0.75),
        Addon(name: "Vanilla Syrup", price: 0.5),
      ],
    ),
    Food(
      name: "Orange Juice",
      description: "Freshly squeezed orange juice.",
      price: 3.0,
      imagePath: "lib/images/drinks/orange.jpeg",
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Ice", price: 0.25),
        Addon(name: "Sparkling Water", price: 0.75),
        Addon(name: "Ginger Syrup", price: 0.5),
        Addon(name: "Strawberry Garnish", price: 0.5),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Refreshing iced tea with lemon slices.",
      price: 2.5,
      imagePath: "lib/images/drinks/iced_tea.jpeg",
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.75),
        Addon(name: "Peach Syrup", price: 0.5),
        Addon(name: "Raspberry Garnish", price: 0.5),
        Addon(name: "Coconut Water", price: 1.0),
      ],
    ),
    Food(
      name: "Mojito",
      description: "Classic cocktail with rum, mint, lime, and soda.",
      price: 8.0,
      imagePath: "lib/images/drinks/mojito.jpeg",
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Simple Syrup", price: 0.5),
        Addon(name: "Club Soda", price: 0.75),
        Addon(name: "Coconut Cream", price: 1.0),
        Addon(name: "Pineapple Garnish", price: 0.5),
      ],
    ),
    Food(
      name: "Mango Smoothie",
      description: "Smoothie made with fresh mangoes and yogurt.",
      price: 4.0,
      category: FoodCategory.drinks,
      imagePath: "lib/images/drinks/mango.jpeg",
      availableAddons: [
        Addon(name: "Protein Powder", price: 1.0),
        Addon(name: "Chia Seeds", price: 0.5),
        Addon(name: "Almond Butter", price: 1.0),
        Addon(name: "Granola Topping", price: 0.75),
      ],
    ),
    //burger
    Food(
      name: "Classic Burger",
      description: "A juicy beef patty with lettuce, tomato, and cheese.",
      price: 10.0,
      imagePath: "lib/images/burgers/classic_burger.png",
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 1.0),
        Addon(name: "Onion Rings", price: 1.25),
        Addon(name: "Guacamole", price: 1.5),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "A delicious vegetarian burger with grilled veggies.",
      price: 8.0,
      imagePath: "lib/images/burgers/veggie.png",
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 1.0),
        Addon(name: "Grilled Mushrooms", price: 1.0),
        Addon(name: "Avocado", price: 1.5),
        Addon(name: "Truffle Aioli", price: 1.25),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description: "Grilled chicken breast with mayo and lettuce.",
      price: 9.0,
      imagePath: "lib/images/burgers/chicken_burger.png",
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Bacon", price: 1.0),
        Addon(name: "BBQ Sauce", price: 0.75),
        Addon(name: "Pineapple", price: 0.5),
        Addon(name: "Jalapenos", price: 0.75),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description: "Beef patty with BBQ sauce, bacon, and cheddar cheese.",
      price: 12.0,
      imagePath: "lib/images/burgers/BBQ.png",
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Onion Rings", price: 1.25),
        Addon(name: "Fried Egg", price: 1.5),
        Addon(name: "Avocado", price: 1.5),
        Addon(name: "Garlic Aioli", price: 1.0),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description: "Beef patty with sautéed mushrooms and Swiss cheese.",
      price: 11.0,
      imagePath: "lib/images/burgers/mushroom_burger.png",
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Bacon", price: 1.0),
        Addon(name: "Truffle Mayo", price: 1.25),
        Addon(name: "Avocado", price: 1.5),
        Addon(name: "Onion Jam", price: 1.0),
      ],
    ),
    //meat
    Food(
      name: "Grilled Chicken",
      description: "Tender grilled chicken breast.",
      price: 12.0,
      imagePath: "lib/images/meat/chicken.png",
      category: FoodCategory.meat,
      availableAddons: [
        Addon(name: "BBQ Sauce", price: 0.75),
        Addon(name: "Garlic Butter", price: 0.5),
        Addon(name: "Lemon Pepper Seasoning", price: 0.5),
        Addon(name: "Sweet Chili Glaze", price: 0.75),
      ],
    ),
    Food(
      name: "Ribeye Steak",
      description: "Juicy ribeye steak cooked to perfection.",
      price: 18.0,
      imagePath: "lib/images/meat/ribseky_steak.png",
      category: FoodCategory.meat,
      availableAddons: [
        Addon(name: "Mushroom Sauce", price: 1.0),
        Addon(name: "Blue Cheese Crumbles", price: 1.25),
        Addon(name: "Red Wine Reduction", price: 1.0),
        Addon(name: "Cajun Seasoning", price: 0.5),
      ],
    ),
    Food(
      name: "Salmon Fillet",
      description: "Fresh salmon fillet seasoned and grilled.",
      price: 15.0,
      imagePath: "lib/images/meat/salmon.png",
      category: FoodCategory.meat,
      availableAddons: [
        Addon(name: "Lemon Dill Sauce", price: 1.0),
        Addon(name: "Pesto Drizzle", price: 0.75),
        Addon(name: "Caper Relish", price: 0.5),
        Addon(name: "Mango Salsa", price: 1.25),
      ],
    ),
    Food(
      name: "Pork Ribs",
      description: "Slow-cooked BBQ pork ribs.",
      price: 14.0,
      imagePath: "lib/images/meat/porkribs.png",
      category: FoodCategory.meat,
      availableAddons: [
        Addon(name: "Kansas City BBQ Sauce", price: 0.75),
        Addon(name: "Apple Cider Glaze", price: 1.0),
        Addon(name: "Carolina Mustard Sauce", price: 0.75),
        Addon(name: "Honey Chipotle Rub", price: 0.5),
      ],
    ),
    Food(
      name: "Lamb Chops",
      description: "Grilled lamb chops with rosemary and garlic.",
      price: 16.0,
      imagePath: "lib/images/meat/lamp.png",
      category: FoodCategory.meat,
      availableAddons: [
        Addon(name: "Mint Jelly", price: 0.75),
        Addon(name: "Balsamic Reduction", price: 1.0),
        Addon(name: "Harissa Sauce", price: 0.5),
        Addon(name: "Tzatziki", price: 1.25),
      ],
    ),
  ];
  final List<CartItem> _cart = [];

  String _deliveryAddress = 'Bahri Dar';

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartItem != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd h:mm:ss a').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name}-${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("Delivery Fee: \$0.99");
    receipt.writeln("------------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice() + 0.99)}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(", ");
  }
}
