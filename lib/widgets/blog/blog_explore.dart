import 'package:echofetch/model/blog_shrinkage.dart';
import 'package:echofetch/widgets/blog/blog_element.dart';
import 'package:echofetch/widgets/feature_blog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BlogExploreHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Blogs",
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                featuredElement(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 34, bottom: 16),
                      child: Text(
                        "Popular",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 34, bottom: 16, right: 8),
                      child:
                          TextButton(onPressed: () {}, child: Text("See More")),
                    )
                  ],
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return BlogElement(
                        title: allData[index].title,
                        comments: allData[index].comments,
                        author: allData[index].author,
                        time: allData[index].time,
                        text: allData[index].text,
                        image: allData[index].image,
                        tagName: allData[index].tName,
                        tagColor: allData[index].tColor,
                      );
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 34, bottom: 16),
                      child: Text(
                        "Latest",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16, top: 34, right: 8.0),
                      child:
                          TextButton(onPressed: () {}, child: Text("See More")),
                    )
                  ],
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return BlogElement(
                        title: allData[index].title,
                        comments: allData[index].comments,
                        author: allData[index].author,
                        time: allData[index].time,
                        text: allData[index].text,
                        image: allData[index].image,
                        tagColor: allData[index].tColor,
                        tagName: allData[index].tName,
                      );
                    }),
          // BlogElement()
        ],
            )) 
    ]));
  }
}