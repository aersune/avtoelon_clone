import 'dart:io';

import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {

  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Javokhir"),
              accountEmail: Text("aersune@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                      child: Image.network("https://www.formula1.com/content/fom-website/en/drivers/charles-leclerc/_jcr_content/image16x9.img.1536.high.jpg",
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                ),
              ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://i.pinimg.com/originals/d8/2e/41/d82e41bdb8eacc0304ce9324179519e5.jpg",
                ),fit: BoxFit.cover,
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Account"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
            onTap: (){
              exit(0);
            },
          ),
        ],
      ),
    );
  }
}
