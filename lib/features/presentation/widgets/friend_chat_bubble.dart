import 'package:chat_app/core/media_query.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
class FriendChatBubble extends StatelessWidget {
  final String message ;

  const FriendChatBubble({ required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(
          left: context.width * 0.02,
          top: context.height * 0.02,
          bottom: context.height *0.02 ,
          right:  context.width * 0.02,

        ),
        margin: EdgeInsets.all(context.height * .02),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          color: AppColors.secondary,
        ),
        child: Text(
          message,
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}