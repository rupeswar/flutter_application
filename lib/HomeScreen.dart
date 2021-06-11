import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/APIService.dart';
import 'package:flutter_application/PostScreen.dart';

import 'Post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Post> posts;
  bool dataIsReady = false;

  @override
  Widget build(BuildContext context) {
    if (!dataIsReady) {
      getData();
      return CircularProgressIndicator();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Application'),
      ),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return PostWidget(post: posts[index]);
          }),
    );
  }

  Future<void> getData() async {
    posts = await APIService.getData();
    setState(() {
      dataIsReady = true;
    });
  }
}

class PostWidget extends StatelessWidget {
  Post post;

  PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text('${post.id}. ${post.title}'),
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute(
            builder: (context) => PostScreen(
                  post: post,
                )));
      },
    );
  }
}
