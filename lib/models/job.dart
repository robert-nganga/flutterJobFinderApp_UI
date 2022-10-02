import 'package:flutter_jobfinder_ui/models/services.dart';

class Job {
  final String title;
  final String company;
  final String contract;
  final List<String> responsibilities;
  final String salary;
  final String description;
  final List<Services> servicesOffered;

  Job({
    required this.contract,
    required this.servicesOffered,
    required this.title,
    required this.company,
    required this.responsibilities,
    required this.salary,
    required this.description,
  });
}