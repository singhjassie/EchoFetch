import 'package:echofetch/features/community/screens/community_screen.dart';
import 'package:echofetch/features/shared/screens/home_screen.dart';
import 'package:echofetch/features/reward/screens/reward_screen.dart';
import 'package:echofetch/features/shop/screens/shop_screen.dart';
import 'package:echofetch/features/chatbot/screens/chat_screen.dart';
import 'package:echofetch/features/pickup/screens/pickup_screen.dart';
import 'package:flutter/material.dart';

class EchoFetchApp extends StatefulWidget {
  const EchoFetchApp({super.key});

  @override
  State<EchoFetchApp> createState() {
    return _EchoFetchAppState();
  }
}

class _EchoFetchAppState extends State<EchoFetchApp> {
  int currentScreenIndex = 0;
  Widget? currentScreen;
  String currentScreenTitle = 'Home';

  void _changeScreen(int index) {
    setState(
      () {
        currentScreenIndex = index;
        switch (index) {
          case 0:
            currentScreen = const HomeScreen();
            currentScreenTitle = 'Home';
            break;
          case 1:
            currentScreen = const PickupScreen();
            currentScreenTitle = 'Pickup';
            break;
          case 2:
            currentScreen = const ShopScreen();
            currentScreenTitle = 'Shop';
            break;
          case 3:
            currentScreen = const CommunityScreen();
            currentScreenTitle = 'Community';
            break;
          case 4:
            currentScreen = const RewardScreen();
            currentScreenTitle = 'Rewards';
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          currentScreenTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: colorScheme.onSurface,
              )),
          Icon(Icons.person),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ChatbotScreen(),
          ));
        },
        child: Icon(Icons.chat),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          _changeScreen(index);
        },
        selectedIndex: currentScreenIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.fire_truck_sharp),
            icon: Icon(Icons.fire_truck_sharp),
            label: 'Pickup',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.shopping_cart,
            ),
            icon: Badge(child: Icon(Icons.shopping_cart_outlined)),
            label: 'Shop',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.people,
            ),
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.people_outline),
            ),
            label: 'Community',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.celebration,
            ),
            icon: Badge(child: Icon(Icons.celebration)),
            label: 'Rewards',
          ),
        ],
      ),
      body: currentScreen==null ? HomeScreen() : currentScreen,
    );
  }
}
