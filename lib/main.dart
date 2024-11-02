import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage("Images/logo.jpeg"),
              ),
              SizedBox(width: 20),
              Text(
                "chats",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: Column(
            children: [
              Container(
                width: 600,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5.0)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    hintText: "search",
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                height: 110,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, i) => buildStoryItem(),
                    separatorBuilder: (context, i) => SizedBox(
                          width: 10,
                        )),
              )
            ],
          ),
        ));
  }
}

Widget buildStoryItem() => Container(
      width: 70.0,
      child: Column(
        children: [
          Stack(
            alignment:AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('Images/logo.jpeg'),
              ),
              Padding(
                padding:  EdgeInsetsDirectional.only(bottom: 3.0, end:3.0),
                child: CircleAvatar(
                  radius: 5.0,
                  backgroundColor: Colors.green,
                ),
              )
            ],
          ),
          Text("Nada Ramadan", textAlign: TextAlign.center,)
        ],
      ),
    );
