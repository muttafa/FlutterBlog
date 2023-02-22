

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
final picker = ImagePicker();
class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}
final TextEditingController nameTextController = TextEditingController();
final TextEditingController surnameTextController = TextEditingController();
final TextEditingController messageTextController = TextEditingController();
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

                     FirebaseFirestore.instance.collection('users').doc('2J3gEw7I7qHapIsMqH2N').set({
                       'users' : {
                         'userName' : nameTextController.text.toString(),
                         'userSurname' : surnameTextController.text.toString(),
                         'userMessage' : messageTextController.text.toString(),
                       }

                     });
                   },
                   child: Icon(Icons.add_a_photo),
                   ),
             ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              margin: EdgeInsets.symmetric(horizontal: 30),

              child: Column(

                children: [
                  TextField(
                    controller: nameTextController,
                    decoration: InputDecoration(
                      labelText: 'Your Name',
                    )
                    ) ,
                  TextField(
                    controller: surnameTextController,
                    decoration: InputDecoration(
                      labelText: 'Your Surname',
                    )
                  ),
                  TextField(
                    controller: messageTextController,
                    decoration: InputDecoration(
                      labelText: 'Your Message',
                    )
                    ) ,

                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}

void onImageButtonPressed(ImageSource source) async {
  try{
    await picker.getImage(source: source);
    } catch(e) {
    print(e);
  }

}

void Insertto(){

}