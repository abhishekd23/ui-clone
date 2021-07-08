import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade400,
      body: SafeArea(
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/download.jpg'),
                    maxRadius: 30.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Abhishek",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            MenuItems(
              icons: Icon(
                Icons.payment,
                color: Colors.white,
              ),
              text: "Payment",
            ),
            SizedBox(
              height: 15.0,
            ),
            MenuItems(
              icons: Icon(
                Icons.add,
                color: Colors.white,
              ),
              text: "Payment",
            ),
            SizedBox(
              height: 15.0,
            ),
            MenuItems(
              icons: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              text: "Notifications",
            ),
            SizedBox(
              height: 15.0,
            ),
            MenuItems(
              icons: Icon(
                Icons.list,
                color: Colors.white,
              ),
              text: "Orders",
            ),
            SizedBox(
              height: 15.0,
            ),
            MenuItems(
              icons: Icon(
                Icons.help,
                color: Colors.white,
              ),
              text: "Help",
            ),
            SizedBox(
              height: 150.0,
            ),
            MenuItems(
              icons: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              text: "Settings",
            ),
            SizedBox(
              height: 5.0,
            ),
            MenuItems(
              icons: Icon(
                Icons.support,
                color: Colors.white,
              ),
              text: "Support",
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({required this.icons, required this.text});
  final Icon? icons;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        child: Row(
          children: [
            icons!,
            SizedBox(
              width: 18.0,
            ),
            Text(
              "$text",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
