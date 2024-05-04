import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  const BlogView(
      {required this.title,
      required this.tColor,
      required this.tName,
      required this.tdata,
      required this.comments,
      required this.img,
      required this.author,
      required this.time});
  final String title;
  final String tName;
  final Color tColor;
  final String tdata;
  final int comments;
  final String img;
  final String author;
  final String time;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // brackgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(CupertinoIcons.back),
          ),
        ),
        body: ListView(padding: EdgeInsets.only(top: 0.0), children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tColor,
                            ),
                            child: Text(
                              tName,
                              style: TextStyle(
                                  color:Theme.of(context).colorScheme.onSecondary,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Metropolis"),
                            )),
                        Text(
                          "  .  6min read   .   $time",
                          style: TextStyle(
                              fontFamily: "Metropolis",
                              color:Theme.of(context).colorScheme.onSecondary,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color:Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                        decoration: BoxDecoration(
                            color:Theme.of(context).colorScheme.onBackground,
                            borderRadius: BorderRadius.circular(32)),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 12,
                              backgroundImage: NetworkImage(
                                  "https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                author,
                                style: TextStyle(color:Theme.of(context).colorScheme.onSecondary),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color:Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.chat_bubble_outline,
                              color:Theme.of(context).colorScheme.onSecondary,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                comments.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onSecondary),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  tdata,
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ],
            ),
          ),
        ]),
        extendBodyBehindAppBar: true,
      ),
    );
  }
}