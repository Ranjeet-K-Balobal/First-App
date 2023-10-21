import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageURL =
        "https://media.licdn.com/dms/image/D5603AQGlJAk4ArXO5w/profile-displayphoto-shrink_400_400/0/1671009767585?e=1703116800&v=beta&t=k-5de4aKIezRNIT5PqHkGq90dRu9-vaucvNPzv6C0zg";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 149, 0, 255),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 243, 229, 254)),
                accountEmail: Text("ranjeet@gmail.com"),
                accountName: Text("Ranjeet B"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white
                  ),
                ),
              

            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.white,),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white
                  ),
                ),
              

            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
              color: Colors.white,),
              title: Text(
                "Mail",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white
                  ),
                ),
              

            )
          ],
        ),
      ),
    );
  }
}
