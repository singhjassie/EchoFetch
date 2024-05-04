import 'package:story_view/story_view.dart';
import 'package:flutter/material.dart';

class StoryPageView extends StatefulWidget {
  const StoryPageView( {super.key});

  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {
  final controller = StoryController();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Stack(
          children: <Widget>[
            StoryView(
              storyItems: [
                StoryItem.text(
                    title:
                        '➡️Features to be added: \n\n\nFollowing mechanism\nAdding caption to photos\nLike storing system\nModifications to chat screen\nA settings page\nEdit profile page\nUpdating Stories\n\n\n 🙂🙂',
                    backgroundColor: Colors.redAccent,
                    textStyle: TextStyle(
                        height: 1.5,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                StoryItem.pageImage(
                    url:
                        'https://img.freepik.com/free-photo/man-wearing-orange-gloves-collecting-garbage-black-bag_1150-23946.jpg?t=st=1714562531~exp=1714566131~hmac=e4995aabd2d85825b14adc81cc339b6112b0389a8861be403094718a80160d89&w=740',
                    controller: controller)
              ],
              controller: controller,
              inline: false,
              repeat: false,
            ),
            Positioned.fill(
                top: 20,
                right: 10,
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                ))
          ],
        ),
      ),
    );
  }
}