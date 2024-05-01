import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:echofetch/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  PostCard({
    required this.name,
    required this.place,
    required this.profilePic,
    required this.postUrl,
    required this.postID,
  });

  final String name;
  final String place;
  final String profilePic;
  final String postUrl;
  final String postID;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _isLiked = false;
  int _likes = 0;

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
          child: Card(
            color: TColors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            shadowColor: TColors.black,
            elevation: 40.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                // image: DecorationImage(
                //     image: NetworkImage(widget.postUrl), fit: BoxFit.cover),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: CachedNetworkImage(
                  imageUrl: widget.postUrl,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  height: 450,
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
              if (_isLiked) {
                _likes += 1;
              } else if (_likes > 0) {
                _likes -= 1;
              }

              // widget.likes += 1;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
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
              backgroundColor: Colors.red.shade100,
              backgroundImage: CachedNetworkImageProvider(widget.profilePic),
            ),
            title: Text(
              widget.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Metropolis',
                fontSize: 14.0,
              ),
            ),
            subtitle: Text(
              widget.place,
              style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Metropolis',
                  color: Colors.white),
            ),
            dense: true,
            trailing: Icon(
              Icons.more_vert,
              color: Colors.white.withOpacity(0.8),
              // size: 15,
            ),
          ),
        ),
        Positioned.fill(
          top: 350,
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
                                if (_isLiked) {
                                  _likes += 1;
                                } else if (_likes > 0) {
                                  _likes -= 1;
                                }
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(
                                milliseconds: 400,
                              ),
                              decoration: BoxDecoration(
                                color: _isLiked
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        '${_likes}',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          color: Colors.white,
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
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.comment,
                            size: 20,
                          ),
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 10, right: 20.0),
                //   child: LikeButton(
                //     likeBuilder: (bool isLiked) {
                //       return Icon(
                //         Icons.bookmark,
                //         color: Colors.white,
                //         size: 20,
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
