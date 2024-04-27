import 'package:echofetch/common/widgets/post_card.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PostCard(name: 'Dolly Chai Wala', place: 'New York', postID: '2324', postUrl: "https://get.pxhere.com/photo/man-person-male-portrait-professional-profession-speaker-senior-citizen-elder-face-expression-adult-business-executive-ben-knapen-1068652.jpg", profilePic: "https://get.pxhere.com/photo/man-person-male-portrait-professional-profession-speaker-senior-citizen-elder-face-expression-adult-business-executive-ben-knapen-1068652.jpg",),
    );
  }
}