import 'package:echofetch/widgets/blog/blog_explore.dart';
import 'package:echofetch/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:echofetch/model/blog_post.dart'; 
import 'package:echofetch/widgets/blog/blogs_card.dart'; 
// kamal ne bnaayii si 
class BlogScreen extends StatelessWidget {
  final List<BlogPost> blogPosts = [
  BlogPost(
    imageUrl: 'assets/images/images.jpeg',
    title:'Unlock the Power of Dreams: Tips for Better Sleep and Enhanced Creativity,',
    author: 'John Doe',
    date: 'May 25, 2024',
  ),
  BlogPost(
    imageUrl: 'assets/images/trash1.jpeg',
    title: 'Boost Your Productivity: Essential Tools and Techniques for Busy Professionals',
    author: 'Jane Smith',
    date: 'June 10, 2024',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2.0,
        top: 20.0,
        bottom: 15.0,
      ),
      child: Column(
        children: [
           Padding(
            padding: EdgeInsets.only(left: 18.0,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SectionHeader(title: 'Trending Blogs'),
                InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) =>  BlogExploreHome()));
              }, 
              child: const Text(
                'View More',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Set horizontal scrolling
              itemCount: blogPosts.length,
              itemBuilder: (context, index) {
                final blogPost = blogPosts[index];
                return Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: BlogCard(
                    imageUrl: blogPost.imageUrl,
                    title: blogPost.title,
                    author: blogPost.author,
                    date: blogPost.date,
                  ),
                );
              },
            ),
          ),])
      );
    
  }
}
