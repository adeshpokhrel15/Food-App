import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/colors.dart';
import 'package:foodapp/constant.dart';
import 'package:foodapp/foodDetail.dart';
import 'package:foodapp/foodDetails.dart';
import 'package:foodapp/style.dart';
import 'package:foodapp/userDetails.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedFoodCard = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  'Chicago IIL',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
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
        drawer: Drawer(
          child: Column(
            children: [
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
              ListTile(
                  leading: Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.menu),
                  title: const Text('Menu'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.search),
                  title: const Text('Search'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.details),
                  title: const Text('User Details'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => userDetails()));
                  }),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Icon(
                        Icons.search,
                        color: AppColors.secondary,
                        size: 25,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: AppColors.lighterGray)),
                          hintText: 'Search Our Delicous Foods',
                          hintStyle: TextStyle(
                              color: AppColors.lightGray,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodCategoryList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 25 : 0),
                        child: foodCategoryCard(
                            foodCategoryList[index]['imagePath'],
                            foodCategoryList[index]['name'],
                            index),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: PrimaryText(
                        text: 'Popular', fontWeight: FontWeight.w700, size: 22),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    width: double.infinity,
                    height: 300,
                    child: Card(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            Container(
                              color: Colors.red,
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                foodDetails()));
                                  },
                                  child: Image.asset(
                                    'assets/pizza.png',
                                    fit: BoxFit.fitWidth,
                                    height: 200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Chicken Pizza',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        Text(
                          'Rs.100',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          'Cheesy Pizza',
                          style: TextStyle(fontWeight: FontWeight.w100),
                        )
                      ],
                    )),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.red,
            labelTextStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          child: NavigationBar(
              height: 50,
              selectedIndex: index,
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              destinations: [
                NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Icons.favorite), label: 'Favorites'),
                NavigationDestination(
                    icon: Icon(Icons.account_box), label: 'Account'),
                NavigationDestination(
                    icon: Icon(Icons.settings), label: 'Settings'),
              ]),
        ));
  }

  Widget foodCategoryCard(String imagePath, String name, int index) {
    return GestureDetector(
      onTap: () => {
        setState(
          () => {
            print(index),
            selectedFoodCard = index,
          },
        ),
      },
      child: Container(
        margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: selectedFoodCard == index ? Colors.red : AppColors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.lighterGray,
                blurRadius: 15,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(imagePath, width: 40),
            PrimaryText(text: name, fontWeight: FontWeight.w800, size: 16),
            RawMaterialButton(
                onPressed: null,
                fillColor: selectedFoodCard == index
                    ? AppColors.white
                    : AppColors.tertiary,
                shape: CircleBorder(),
                child: Icon(Icons.chevron_right_rounded,
                    size: 20,
                    color: selectedFoodCard == index
                        ? AppColors.black
                        : AppColors.white))
          ],
        ),
      ),
    );
  }
}
