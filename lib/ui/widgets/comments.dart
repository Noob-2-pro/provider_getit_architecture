

import 'package:flutter/material.dart';

import '../../core/models/comment.dart';
import '../shared/app_colors.dart';
import '../shared/ui_helpers.dart';


class Comments extends StatelessWidget {
  final int postId;
  const Comments(this.postId);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('I am comments '));
  }
}

/// Renders a single comment given a comment model
class CommentItem extends StatelessWidget {
  final Comment comment;
  const CommentItem(this.comment);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: commentColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            comment.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          UIHelper.verticalSpaceSmall(),
          Text(comment.body),
        ],
      ),
    );
  }
}
