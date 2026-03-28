import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final void Function(int)? onItemTap;

  const AppDrawer({super.key, this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Danielu Parku-san"),
            accountEmail: Text("jyansanchez15@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/Danielparku.jpg"),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () => onItemTap?.call(0),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text("Messages"),
            onTap: () => onItemTap?.call(1),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: () => onItemTap?.call(2),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () => onItemTap?.call(3),
          ),
        ],
      ),
    );
  }
}
