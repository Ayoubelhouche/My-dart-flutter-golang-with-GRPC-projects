import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ncov/services/remote_services.dart';

import '../models/post.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Post>? posts;
  var isLoaded = false;
  @override
  @override
  void initState() {
    super.initState();
    //fecth data from api
    getData();
  }

  getData() async {
    posts = await RemoteService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body:Visibility(
          visible: isLoaded,
          child: 
        ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Text(posts![index].title),
            );
          },
        ),
        replacement: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        )
        );
  }
}
