import 'package:flutter/material.dart';

import 'Post.dart';

class PostScreen extends StatelessWidget {
  Post post;
  PostScreen({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Application'),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text('User ID'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Text('${post.userId}'),
                        flex: 1,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text('ID'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Text('${post.id}'),
                        flex: 1,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text('Title'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Text('${post.title}'),
                        flex: 1,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text('Body'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Text('${post.body}'),
                        flex: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
