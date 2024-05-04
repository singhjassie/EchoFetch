import 'package:echofetch/widgets/blog/blogs_main.dart';
import 'package:echofetch/widgets/trashscreen.dart';
import 'package:echofetch/widgets/user_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
        child: Column(
          children: [
            UserCard(name: 'Julie', 
            level: "Economic Beginer", 
            imageUrl: 'https://images.pexels.com/photos/2853592/pexels-photo-2853592.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            BlogScreen(),
            TrashScreen() ,  
          ],
        ),
      ),
    );
  }
}
