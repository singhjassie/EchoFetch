import 'package:echofetch/widgets/Community/story_view_screen.dart';
import 'package:flutter/material.dart';

class StoryWid extends StatelessWidget {
  final String name;
  final String img;

  const StoryWid({super.key, required this.name ,required this.img}) ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
          child: Column(children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StoryPageView()));
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [Theme.of(context).colorScheme.primary,Theme.of(context).colorScheme.primary.withOpacity(0.2)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(img),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              // padding: const EdgeInsets.fromLTRB(10.0, 5.0, 8.0, 5.0),
              padding: EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 11.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ]),
        ),
    );
  }
}