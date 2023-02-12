import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Flutter", style: TextStyle(fontSize: 26)),
            Text("Blog", style: TextStyle(fontSize: 26, color: Colors.red),)
          ],
        ),
            actions: [
             Container(
                 padding: EdgeInsets.symmetric(horizontal: 16),
                 child: GestureDetector(child: Icon(Icons.file_upload),)),
        ],
      ),
    );
  }
}
