import 'package:flutter/material.dart';
import 'package:flutter_jobfinder_ui/appData.dart';
import 'package:flutter_jobfinder_ui/constants.dart';
import 'package:flutter_jobfinder_ui/models/services.dart';
import 'package:flutter_jobfinder_ui/widgets/jobDetailsList.dart';
import 'package:flutter_jobfinder_ui/widgets/jobResponsibilitiesList.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/job.dart';

class JobDetailsScreen extends StatefulWidget {
  final Job job;
  const JobDetailsScreen({Key? key, required this.job}) : super(key: key);

  @override
  _JobDetailsScreenState createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 30.0,
                    color: Colors.black
                ),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  widget.job.title,
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  widget.job.company,
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black45,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              JobDetailsList(items: jobDetails),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Job Description',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  widget.job.description,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Responsibilities',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              JobResponsibilitiesList(responsibilities: widget.job.responsibilities),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'What we offer',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ServiceCard(services: widget.job.servicesOffered[0], color: fbColor, icon: Icons.medical_information_outlined),
                  ServiceCard(services: widget.job.servicesOffered[1], color: fgColor, icon: Icons.book),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final Services services;
  final Color color;
  final IconData icon;

  const ServiceCard({
    Key? key, required this.services,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.46,
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Icon(
              icon,
              color: Colors.black,
              size: 30.0,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            services.title,
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            services.description,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
