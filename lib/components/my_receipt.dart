import 'package:flutter/material.dart';
import 'package:gebeta_food_app/model/restaurant.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({Key? key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime estimatedDeliveryTime = now.add(const Duration(minutes: 30));
    String formattedDeliveryTime =
        DateFormat('h:mm a').format(estimatedDeliveryTime);
        
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "lib/images/icons/icon.png",
              alignment: Alignment.center,
              height: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const Text("Thank you for your order!"),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) =>
                    Text(restaurant.displayCartReceipt()),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text("Estimated delivery time is $formattedDeliveryTime"),
          ],
        ),
      ),
    );
  }
}
