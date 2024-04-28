import 'package:flutter/material.dart';
import 'package:gebeta_food_app/components/my_drawer_tile.dart';
import 'package:gebeta_food_app/pages/settings_page.dart';
import 'package:gebeta_food_app/services/auth_service.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  void logout() async {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image.asset(
              "lib/images/icons/icon.png",
              height: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          //const Spacer(),
          MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              }),
          const Spacer(),

          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () {
              widget.logout();
            },
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }

  State<StatefulWidget> createState() => throw UnimplementedError();
}
