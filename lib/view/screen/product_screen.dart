import 'package:flutter/cupertino.dart';
import 'package:ios_product/view/screen/search_screen.dart';
import 'cart_screen.dart';
import 'dash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "Products"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: "Cart"),
          ]),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return index == 0
                ? ProductScreen()
                : index == 1
                ? SearchScreen()
                : CartScreen();
          },
        );
      },
    );
  }
}
