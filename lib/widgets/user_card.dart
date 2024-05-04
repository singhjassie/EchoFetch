import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String level;
  final String imageUrl;

  const UserCard({
    super.key,
    required this.name,
    required this.level,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.primary.withOpacity(.6),
                  ],
                ),
              ),
              width: double.infinity,
              height: 160.0, 
            ),
            // User information positioned on top
            Positioned(
              top: 25.0,
              left: 140.0,
              child: Row(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color:Theme.of(context).colorScheme.onSecondary,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    name ,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ],
              ),
            ),
            
             Positioned(
              left: 20,
              top: 25,
               child:  CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                    radius: 50.0,
                ),
             ),
             Positioned(
              top: 70,
              left: 140.0,
              
                child: Text(
                  'Your level: ',
                  style: TextStyle(
                    color:Theme.of(context).colorScheme.onSecondary,
                    fontSize: 15.0,
                  ),
                ),
              ),
            // Level badge positioned on bottom
            Positioned(
              top: 90,
              left: 140.0,
              
                child: Text(
                  level,
                  style: TextStyle(
                    color:Theme.of(context).colorScheme.onSecondary,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              
            ),
          ],
        ),
      ),
    );
  }
}
