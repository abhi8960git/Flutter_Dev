import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  final imageURL =
      "https://i.pinimg.com/originals/8f/bb/63/8fbb63a4e24b30e0ed119527ae2e7300.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color:Colors.blue[300],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Abhishek"),
                accountEmail: Text("abhi8994ty@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home",
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.white,
              ),

              ),

            ),
              ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text("Profile",
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.white,
              ),

              ),

            ),
              ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text("Email me",
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.white,
              ),

              ),

            )
          ],
        ),
      ),
    );
  }
}
