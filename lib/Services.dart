import 'package:flutter/material.dart';

import 'home.dart';

class Services extends StatefulWidget {
  

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Text("Info Page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
              width: 300.0,
              height: 500.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1518650621721-126ae10b813a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80="),
                // fit: BoxFit.cover
              )),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon((Icons.supervised_user_circle_rounded)),
                    color: Colors.cyan,
                    iconSize: 60,
                    onPressed: () {},
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ("User"),
                        style: TextStyle(color: Colors.cyan),
                      ),
                      Text(
                        ("User@gmail.com"),
                        style: TextStyle(color: Colors.cyan),
                      )
                    ],
                  )
                ],
              )),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  child: (Row(
                    children: <Widget>[
                      // ...
                      Expanded(
                        child: Column(
                          children: <Widget>[
                         
                            Divider(color: Colors.black)
                          ],
                        ),
                      )
                    ],
                  )),
                ),

                GestureDetector(onTap:(){
                  // Navigator.pop(context);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>Home()));
                },
                child:  ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.recent_actors)),
                    color: Colors.blueAccent,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Recent")
                
                ),
                ),
              
                
                  ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.info)),
                    color: Colors.blueAccent,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("For More Info!")
                
                ),
                  ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.help)),
                    color: Colors.blueAccent,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Help Center")
                
                ),
                ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.drive_file_move)),
                    color: Colors.blueAccent,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Open Drive")
                
                ),

                 ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.settings_sharp)),
                    color: Colors.blueAccent,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Setting")
                
                ),
                   ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.login_outlined)),
                    color: Colors.blueAccent,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Log Out")
                
                ),
                

               
              ],
            ),
            // GestureDetector(onTap: (){},child:ListTile(title:Text("hello"))),  //GestureDetector used for Drawer move one page to other
          ],
        ),
      ),
     body:Center(child: Text(("Thousands of teams are already using Drive to revolutionise the way they work"),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),))
    ));
  }
}



