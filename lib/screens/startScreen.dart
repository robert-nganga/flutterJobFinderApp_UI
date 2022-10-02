import 'package:flutter/material.dart';
import 'package:flutter_jobfinder_ui/appData.dart';
import 'package:flutter_jobfinder_ui/screens/homeScreen.dart';
import 'package:flutter_jobfinder_ui/widgets/customListWrapper.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'skip',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(20.0),
          child: SizedBox(
            height: 40.0,
            child: Text(
              'Find your dream job',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CustomListWrapper(items: jobTitle, title: 'Job Title'),
          CustomListWrapper(items: country, title: 'Country'),
          CustomListWrapper(items: contractType, title: 'Availability'),
          CustomListWrapper(items: salary, title: 'Salary'),
          SizedBox(height: 65.0),
        ],
      ),
      bottomSheet: Container(
        height: 70.0,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -1),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  'Get Started',
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
    );
  }
}
