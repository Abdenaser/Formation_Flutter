import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp1/widgets/drawer_item.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Column(
            children: [
              CircleAvatar(
                child: Image.network(
                    'https://media-exp1.licdn.com/dms/image/C5603AQFQVCUuLKDANA/profile-displayphoto-shrink_800_800/0/1651285476793?e=1657756800&v=beta&t=u_cpht-fhS2o8cJXyOtT701-j5bTOPAbTylli43IynQ'),
                radius: 50,
              ),
              SizedBox(height: 6),
              Text("Abdenasser Aroukhsiss"),
            ],
          )),
          DrawerItem("Home","/",Icon(Icons.home)),
          DrawerItem("Contacts","/contacts",Icon(Icons.contacts)),
          DrawerItem("Github Users","/github_users",Icon(Icons.supervised_user_circle)),
          DrawerItem("Covid 19","/covid",Icon(Icons.airplay_rounded)),
          DrawerItem("About","/about",Icon(Icons.error)),

        ],
      ),
    );
  }
}
