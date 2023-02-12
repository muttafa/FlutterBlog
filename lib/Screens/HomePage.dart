
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
      body: Container(),
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
