import 'package:flutter/material.dart';
import 'package:recipie/ui/navigation/main_navigation.dart';

import '../../constants/strings.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(IconData icon, String title, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: montserratFont,
          fontSize: 24,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Drawer(
      child: Column(
        children: [
          Container(
            height: mediaQuery.size.height * 0.15,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: appTheme.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Text(
              appTitle,
              style: TextStyle(
                fontFamily: yesteryearFont,
                fontSize: 52,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: mediaQuery.size.height * 0.1,
          ),
          const Divider(),
          buildListTile(
            Icons.account_box_rounded,
            accountMenuName,
            () {},
          ),
          const Divider(),
          buildListTile(
            Icons.fastfood_rounded,
            categoriesMenuName,
            () => Navigator.of(context).pushNamed(RouteNames.categoriesScreen),
          ),
          const Divider(),
          buildListTile(
            Icons.receipt_long_rounded,
            yourRecipesMenuName,
            () {},
          ),
          const Divider(),
          buildListTile(
            Icons.settings,
            settingsMenuName,
            () {},
          ),
          // const Divider(),
          // buildListTile(Icons.logout, 'Выйти', () {
          //   Navigator.of(context).pop();
          //   Navigator.of(context).pushReplacementNamed('/');
          //   Provider.of<AuthProvider>(context, listen: false).logout();
          // }),
        ],
      ),
    );
  }
}
