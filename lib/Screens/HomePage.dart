
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterblog2/Screens/AddPost.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 26,
                ),

            ),
            Text("Blog",style: TextStyle(fontSize: 26,color: Colors.red),),

          ],

        ),
      ),
      body: Container(
        child: Card(),
      ),
      floatingActionButton: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AddPost()));
            },
              child: Icon(Icons.add),
        )],) ,
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(""),
          ],
        )
      ],
    );
  }
}

