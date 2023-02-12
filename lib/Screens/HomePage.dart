
import 'package:flutter/material.dart';

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
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              // Tıklayınca gönderiyi firebase ekle
          },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.file_upload))),
        ],
      ),
      body: Container(),
      floatingActionButton: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: (){
          // Tıkladığında blog ekleme sayfasına git
            },
              child: Icon(Icons.add),
        )],) ,
      ),
    );
  }
}
