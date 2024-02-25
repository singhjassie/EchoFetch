import 'package:echofetch/screens/price_screen.dart';
import 'package:echofetch/screens/reward_screen.dart';
import 'package:flutter/material.dart';
import 'package:echofetch/screens/chat_screen.dart';
import 'package:echofetch/screens/home_screen.dart';

class EchoFetch extends StatefulWidget {
  const EchoFetch({super.key});

  @override
  State<EchoFetch> createState() {
    return _EchoFetchState();
  }
}

class _EchoFetchState extends State<EchoFetch> {
  int currentScreenIndex = 0;
  Widget? currentScreen = const HomeScreen();

  void _changeScreen(int index) {
    setState(
      () {
        currentScreenIndex = index;
        if (index == 0) {
          currentScreen = const HomeScreen();
        } else if (index == 1) {
          currentScreen = const PricingScreen();
        }else if (index == 2) {
          currentScreen = const RewardScreen();
        } else if (index == 3) {
          currentScreen = const ChatScreen();
        }
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'EchoFetch',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          actions: const [
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  width: 12,
                )
              ],
            )
          ]),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          _changeScreen(index);
        },
        indicatorColor: Theme.of(context).colorScheme.primary,
        selectedIndex: currentScreenIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: Colors.white,),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.price_change, color: Colors.white,),
            icon: Badge(child: Icon(Icons.price_change)),
            label: 'Pricing',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.celebration, color: Colors.white,),
            icon: Badge(child: Icon(Icons.celebration)),
            label: 'Rewards',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.comment_rounded, color: Colors.white,),
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.comment_rounded),
            ),
            label: 'Help',
          ),
        ],
      ),
      body: currentScreen,
    );
  }
}
