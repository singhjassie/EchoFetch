import 'package:flutter/material.dart';
import 'package:purecycle/chat_screen.dart';
import 'package:purecycle/home_page.dart';

class PuRecycle extends StatefulWidget {
  const PuRecycle({super.key});

  @override
  State<PuRecycle> createState() {
    return _PuRecycleState();
  }
}

class _PuRecycleState extends State<PuRecycle> {
  int currentScreenIndex = 0;
  Widget? currentScreen = const HomeScreen();

  void _changeScreen(int index) {
    setState(
      () {
        currentScreenIndex = index;
        if (index == 0) {
          currentScreen = const HomeScreen();
        } else if (index == 3) {
          currentScreen = const ChatScreen();
        }
      },
    );
  }

  void _openNewRequestScreen(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'PuRecycle',
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
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.price_change)),
            label: 'Pricing',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.celebration)),
            label: 'Rewards',
          ),
          NavigationDestination(
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
