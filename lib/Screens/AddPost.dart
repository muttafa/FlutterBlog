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
                 child: GestureDetector(
                   onTap: (){
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                       content: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Tıkladın amk"),
                         ],
                       ),
                     ));
                   },
                   child: Icon(Icons.file_upload),)),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.add_a_photo,
                color: Colors.black,
              ),

            )
          ],
        ),
      ),
    );
  }
}
