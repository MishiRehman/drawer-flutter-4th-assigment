import 'package:drawer_nav/Services.dart';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
 

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Text("My Drive"),
      ),
      backgroundColor: Colors.black,
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
                    icon: Icon((Icons.supervised_user_circle_outlined)),
                    color: Colors.yellowAccent,
                    iconSize: 50,
                    onPressed: () {},
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ("User Name"),
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      Text(
                        ("User@gmail.com"),
                        style: TextStyle(color: Colors.deepOrange),
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
                    icon: Icon((Icons.recent_actors_outlined)),
                    color: Colors.black,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Recent")
                
                ),
                ),
              
               
                 GestureDetector(onTap:(){
                  // Navigator.pop(context);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>Services()));
                },
                child:  ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.info_outline)),
                    color: Colors.black,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("For More info!")
                
                ),
                ),
                  ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.help)),
                    color: Colors.black,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Help Center")
                
                ),
                ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.drive_file_move)),
                    color: Colors.black,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Open drive")
                
                ),

                 ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.settings_sharp)),
                    color: Colors.black,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Setting")
                
                ),
                   ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.login_outlined)),
                    color: Colors.black,
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
        body:
        

        Center(child: Text(("Go To Drive !"),style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold, color: Colors.white),))

    ));
   
  }
}

