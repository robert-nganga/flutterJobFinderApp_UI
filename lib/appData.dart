import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'models/job.dart';
import 'models/services.dart';

var jobTitle = ['Developer', 'Designer', 'Manager', 'Sales', 'Marketing', 'Accountant', 'HR'];
var country = ['USA', 'UK', 'India', 'South Africa', 'China', 'South Africa', 'Morocco', 'Kenya'];
var contractType = ['Full Time', 'Part Time', 'Freelance', 'Internship', 'Entry level'];
var contractDuration = ['1 year', '2 years', '3 years', '4 years', '5 years'];
var salary = ['\$10,000', '\$20,000', '\$30,000', '\$40,000', '\$50,000', '\$60,000', '\$70,000', '\$80,000', '\$90,000', '\$100,000'];
var jobDetails = [];

List<Services> sdJobServices = [
  Services(
    title: 'Insurance',
    description: 'After probation period',
  ),
  Services(
    title: 'English Courses',
    description: 'Compensation for courses',

  ),
];
List<Services> mdJobServices = [
  Services(
    title: 'Consulting',
    description: 'We help you grow your brand',
  ),
  Services(
    title: 'Marketing',
    description: 'promote and advertise your brand',
  ),
];
List<Services> hrJobServices = [
  Services(
    title: 'Graphic Design',
    description: 'Design materials like web pages, logos and signs.',
  ),
  Services(
    title: 'Financial advising',
    description: 'Help you manage your finances',
  ),
];

List<Job> jobs = [
  Job(
    title: 'Senior Developer',
    contract: 'Full Time',
    company: 'Google Inc.',
    responsibilities: ['Develop software as per requirements', 'Test software', 'Maintain software', 'Lead a team of developers'],
    salary: '\$100,000',
    description: 'We are looking for a senior developer to join our team. You will be responsible for developing software as per requirements, testing software and maintaining software.',
    servicesOffered: sdJobServices,
  ),
  Job(
    title: 'Marketing Manager',
    contract: 'Full Time',
    company: 'Facebook',
    responsibilities: ['Develop marketing strategies', 'Develop marketing campaigns', 'Manage marketing team', 'Manage marketing budget'],
    salary: '\$80,000',
    description: 'We are looking for a marketing manager to join our team. You will be responsible for developing marketing strategies, developing marketing campaigns, managing marketing team and managing marketing budget.',
    servicesOffered: mdJobServices,
  ),
  Job(
    title: 'HR Manager',
    contract: 'Part Time',
    company: 'Microsoft',
    responsibilities: ['Develop HR strategies', 'Develop HR policies', 'Manage HR team', 'Manage HR budget'],
    salary: '\$70,000',
    description: 'We are looking for a HR manager to join our team. You will be responsible for developing HR strategies, developing HR policies, managing HR team and managing HR budget.',
    servicesOffered: hrJobServices,
  ),
];