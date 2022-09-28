import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobfinder_ui/appData.dart';
import 'package:flutter_jobfinder_ui/constants.dart';
import 'package:flutter_jobfinder_ui/widgets/bottomNavItem.dart';
import 'package:flutter_jobfinder_ui/widgets/customListWrapper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.30,
              decoration: BoxDecoration(
                color: tColor,
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 10.0,
                    right: 20.0,
                    child: IconButton(
                      icon: const Icon(Icons.notifications_outlined),
                      onPressed: () {},
                      iconSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    top: 0.0,
                    left: 20.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Icon(
                          Icons.account_circle_outlined,
                          size: 60.0,
                        ),
                        const SizedBox(width: 5.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontStyle: FontStyle.italic,
                                color: Colors.black54
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Julie Bell',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 20.0,
                    right: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Find job today',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: 1.0,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                                  fillColor: Colors.grey[100],
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: const BorderSide(width: 0.8),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: const BorderSide(
                                      width: 0.8,
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: 'Search',
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.black,
                              ),
                              child: const Icon(
                                Icons.sort,
                                color: Colors.white,
                                size: 40.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  CustomListWrapper(items: jobTitle, title: 'Job Title'),
                  CustomListWrapper(items: country, title: 'Country'),
                ],
              ),
            ),
            Container(
              height: 70.0,
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              BottomNavItem(
                icon: Icons.home,
                title: 'Home',
                isActive: true,
                onTap: () {},
              ),
              BottomNavItem(
                icon: Icons.calendar_month_outlined,
                title: 'Meetings',
                isActive: false,
                onTap: () {},
              ),
              BottomNavItem(
                icon: Icons.favorite_border_outlined,
                title: 'Favorite',
                isActive: false,
                onTap: () {},
              ),
              BottomNavItem(
                icon: Icons.settings_outlined,
                title: 'settings',
                isActive: false,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
