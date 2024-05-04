import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:echofetch/model/comment_model.dart';
import 'package:echofetch/widgets/Community/comment_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';


// ignore: must_be_immutable
class PostCard extends StatefulWidget {
  bool isLiked = false;
  int likes;

  final String name;
  final String place;
  final String profilePic;
  final String postUrl;
  final String postID;
  final String caption;

  PostCard(
      {required this.likes,
      required this.name,
      required this.place,
      required this.profilePic,
      required this.postUrl,
      required this.postID,
      required this.caption});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
          child: Card(
            color:Theme.of(context).colorScheme.onSecondary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            shadowColor: Colors.black,
            elevation: 40.0,
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                // image: DecorationImage(
                //     image: NetworkImage(widget.postUrl), fit: BoxFit.cover),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                child: CachedNetworkImage(
                  imageUrl: widget.postUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 400,
                  placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(
                    color: Colors.red.shade100,
                  )),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              widget.isLiked = !widget.isLiked;
              if (widget.isLiked) {
                widget.likes += 1;
              } else if (widget.likes > 0) {
                widget.likes -= 1;
              }

              // widget.likes += 1;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            child: Container(
              height: 400.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color:Theme.of(context).colorScheme.onSecondary,
                  gradient: LinearGradient(
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.topCenter,
                    colors: [
                      Colors.grey.withOpacity(0.0),
                      Colors.black.withOpacity(0.5),
                    ],
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor:Theme.of(context).colorScheme.onSecondary,
              backgroundImage: CachedNetworkImageProvider(widget.profilePic),
            ),
            title: Text(
              widget.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSecondary,
                fontFamily: 'Metropolis',
                fontSize: 14.0,
              ),
            ),
            subtitle: Text(
              widget.place,
              style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Metropolis',
                  color: Theme.of(context).colorScheme.onSecondary),
            ),
            dense: true,
            trailing: Icon(
              Icons.more_vert,
              color:Theme.of(context).colorScheme.onSecondary,
              // size: 15,
            ),
          ),
        ),
        Positioned.fill(
          top: 300,
          left: 25,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.isLiked = !widget.isLiked;
                                if (widget.isLiked) {
                                  widget.likes += 1;
                                } else if (widget.likes > 0) {
                                  widget.likes -= 1;
                                }
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(
                                milliseconds: 400,
                              ),
                              decoration: BoxDecoration(
                                color: !widget.isLiked
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: <Widget>[
                                    FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: Theme.of(context).colorScheme.onSecondary,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        '${widget.likes}',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          color: Theme.of(context).colorScheme.onSecondary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),   
                      // Comment icon
                      MaterialButton(
                        splashColor: Colors.transparent,
                        onPressed: () {
                        _displayBottomSheet(context);
                        },
                        child: FaIcon(
                          FontAwesomeIcons.comment,
                          color: Theme.of(context).colorScheme.onSecondary,
                          size: 20,
                        ),
                      ),        
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 20.0),
                  child: LikeButton(
                    likeBuilder: (bool isLiked) {
                      return FaIcon(
                        FontAwesomeIcons.bookmark,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: 20,
                      );
                    },
                  ),
                ),     
              ],
            ),       
          ),    
        ),
      ],
    ); 
  }

   Future _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return 
          CommentScreen(
            comments: [
              CommentModel(name: 'Jolie', profileImageUrl: "https://images.pexels.com/photos/22482262/pexels-photo-22482262/free-photo-of-portrait-of-blonde-woman-in-suit-jacket.jpeg", comment: 'Smart work', time: '2d'),
              CommentModel(name: 'Mandeep Singh', profileImageUrl: "https://images.pexels.com/photos/19726469/pexels-photo-19726469/free-photo-of-portrait-of-man-in-turban.jpeg", comment: 'Great Idea ', time: '2d'),
            ],
      );
    },
  );
}

}