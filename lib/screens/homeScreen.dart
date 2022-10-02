import 'package:flutter/material.dart';
import 'package:flutter_jobfinder_ui/appData.dart';
import 'package:flutter_jobfinder_ui/constants.dart';
import 'package:flutter_jobfinder_ui/widgets/bottomNavItem.dart';
import 'package:flutter_jobfinder_ui/widgets/customListWrapper.dart';
import 'package:flutter_jobfinder_ui/widgets/jobCard.dart';
import 'package:flutter_jobfinder_ui/widgets/jobDetailsList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  _buildJobList() {
    List<Widget> jobList = [];
    for (var job in jobs) {
      jobList.add(JobCard(job: job));
    }
     return  jobList;
  }

  practise(){
    Container();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: tColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.30,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                color: tColor,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: const AssetImage('images/profile.png'),
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
                      IconButton(
                        icon: const Icon(Icons.notifications_outlined),
                        onPressed: () {},
                        iconSize: 30.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Column(
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
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                                fillColor: tColor,
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
                          const SizedBox(width: 10.0),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: tColor,
                              border: Border.all(
                                width: 0.8,
                                color: Colors.black,
                              ),
                            ),
                            child: const Icon(
                              Icons.sort,
                              color: Colors.black,
                              size: 40.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Found 356 positions',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    JobDetailsList(items: jobDetails),
                    const SizedBox(height: 10.0),
                    Column(
                      children: _buildJobList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
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

