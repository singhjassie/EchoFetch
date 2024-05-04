import 'package:echofetch/widgets/Community/post_card.dart';
import 'package:echofetch/widgets/Community/strory_widget.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  bool _showNestedButtons = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          // Existing post list
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      StoryWid( name: 'kml', img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH00Q-hO9QYKMtq5I7NuEWmY8eDLBMB8R-xGrulIAzsw&s"),
                      StoryWid( name: 'jass', img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvXoZFu4HDvjgeoxmNCq2jy0i1Q_R1V7chqBNOmvaAHw&s"),
                      StoryWid( name: 'Ajay', img: "https://media.licdn.com/dms/image/D5603AQE2RviBp3p-5Q/profile-displayphoto-shrink_200_200/0/1712493081873?e=2147483647&v=beta&t=ZaX9YcRA1wU-N8j5DkWdj9QfIkTggBbkyi5wSF9cplY"),
                      StoryWid( name: 'Google', img: "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png"),
                      StoryWid( name: 'Elon', img: "https://cloudfront-us-east-2.images.arcpublishing.com/reuters/OJDBGALELNJBVBVCFKBR5KPWUE.jpg"),
                      StoryWid( name: 'BBC', img: "https://yt3.googleusercontent.com/y_esGAQOhX4rTpWvrALErAJlFbm_2TIVrvcVfcZny7TuA8dJZgOQcC6KRfd_J5hljFe-foYXj9U=s900-c-k-c0x00ffffff-no-rj"),
                      StoryWid( name: 'Prableen', img: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
                    ],
                  ),
                ),
                PostCard(likes: 553, 
                name: "Jaskaran", 
                place: 'Hoshiarpur', 
                caption: "Life is a journey, enjoy the ride.",
                profilePic: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvXoZFu4HDvjgeoxmNCq2jy0i1Q_R1V7chqBNOmvaAHw&s', 
                postUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Ecobricks-are-bottles-packed-with-non-biological-waste.jpg/800px-Ecobricks-are-bottles-packed-with-non-biological-waste.jpg', 
                postID: '4w3'),

                PostCard(
                  likes: 33,
                  name: "Kamal",
                  place: 'Punjab',
                  caption: "Keep it simple, keep it real.",
                  profilePic:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH00Q-hO9QYKMtq5I7NuEWmY8eDLBMB8R-xGrulIAzsw&s',
                  postUrl:
                      'https://www.rts.com/wp-content/uploads/2020/06/recycled-tires-3.jpg',
                  postID: '43',
                ),
                PostCard(likes: 66,
                 name: "Ajay", 
                 place: 'Nawan Shehar',
                 caption: "Life is too short to be anything but happy.", 
                 profilePic: 'https://media.licdn.com/dms/image/D5603AQE2RviBp3p-5Q/profile-displayphoto-shrink_200_200/0/1712493081873?e=2147483647&v=beta&t=ZaX9YcRA1wU-N8j5DkWdj9QfIkTggBbkyi5wSF9cplY', 
                 postUrl: 'https://wastemanagementreview.com.au/wp-content/uploads/2018/05/Wyndham-Point-Cook-2-1024x768.jpg', 
                 postID: '423'),

                PostCard(likes: 556,
                 name: "Elon Musk",
                 place: 'SpaceX',
                 caption: 'I don\'t chase dreams, I hunt goals',
                 profilePic: 'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/OJDBGALELNJBVBVCFKBR5KPWUE.jpg', 
                 postUrl: 'https://static.wixstatic.com/media/d578f8_66902742f7c1448a93a3a43b2286ad09~mv2.png/v1/fill/w_614,h_444,al_c,lg_1,q_85/d578f8_66902742f7c1448a93a3a43b2286ad09~mv2.png',
                 postID: '123'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          setState(() {
            _showNestedButtons = !_showNestedButtons;
          });
        },
        child: Icon(Icons.add,color: Theme.of(context).colorScheme.onSecondary,),
      ),
    );
  }
}
