import 'package:aber_app/Screens/contact_us/contact_us.dart';
import 'package:aber_app/Screens/notification_screen/notification_screen.dart';
import 'package:aber_app/Screens/privacy_policies/privacy_policies.dart';
import 'package:aber_app/Screens/profile_screnn/profile_screen.dart';
import 'package:aber_app/Screens/wallet_screen/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerScreen extends StatefulWidget {
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 239, 241, 245),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 193, 29, 29),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            accountName: Text(
              "Avail",
              style: TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
            ),
            accountEmail: Text(
              "avail23@gmail.com",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "images/profile.png",
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.wallet, color: Color.fromARGB(255, 0, 0, 0)),
            title: Text(
              "Wallet",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WalletDemo()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.notification_add,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Notification",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationDemo()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.description,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Privacy Policies",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Privacypolicy()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.album_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Contact Us",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUs()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings, color: Color.fromARGB(255, 0, 0, 0)),
            title: Text(
              "Settings",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Exit",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              SystemNavigator.pop();
            },
          )
        ],
      ),
    );
  }
}
