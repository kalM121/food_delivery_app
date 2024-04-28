import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gebeta_food_app/components/my_button.dart';
import 'package:gebeta_food_app/components/my_cart_tile.dart';
import 'package:gebeta_food_app/model/restaurant.dart';
import 'package:gebeta_food_app/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;
        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Are you sure you want to clear the cart"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              )
            ],
          ),
          body: Column(
            children: [


              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty 
                    ? const Expanded(
                      child: Center(
                        child:  Text("Cart is empty..."),
                        ),
                        ) 
                    :Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          final cartItem = userCart[index];
                          return MyCartTile(cartItem: cartItem, restaurant: restaurant,);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              MyButton(text: "Go to check out",
               onTap: ()=>Navigator.push(
                context, MaterialPageRoute(
                  builder: (context)=>const PaymentPage(),
               ),
               ),
               ),
               const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
