import 'package:flutter/material.dart';

class userDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'TITLE',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: SafeArea(
          child: ListView(children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://townsquare.media/site/40/files/2017/03/Dog-.jpg?w=1200&h=0&zc=1&s=0&a=t&q=89'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Dog'),
                Text('dog@gmail.com'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text('Account'),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Profile'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Saved Address'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.notification_add),
                    title: Text('Notification'),
                    onTap: () {},
                  ),
                  SizedBox(height: 20),
                  Text('Offers'),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Promos'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Get Discounts'),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Settings'),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Themes'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
