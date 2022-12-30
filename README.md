# job_finder_ui


## Getting Started

Modern UI for Job finders and hiring companies.

### Folder Structure
Here is the core folder structure which flutter provides.
<code>
flutter-app/
 |- android
 |- build
 |- ios
 |- lib
 |- test
 </code>
 
 Here is the folder structure I used in this project
<code> 
lib/
|- images/
|- screens/
|- screens/views
|- screens/views/featured.dart
|- screens/views/onboarding_screen.dart
|- screens/views/recent_jobs.dart
|- screens/views/sub_cat.dart
|- screens/views/sub_tabs.dart
|- main.dart</code>


### Main
<code>import 'package:flutter/material.dart';
import 'package:onboarding_screen/screens/views/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  } }</code>


#### UI 
<img src="https://user-images.githubusercontent.com/120676400/210115045-db96ab4f-4e53-45fc-86db-1cb1c807221e.png" width="360" height="780">   <img src="https://user-images.githubusercontent.com/120676400/210115170-e48b16ef-1123-4001-a5b2-73222b454b4d.png" width="360" height="780">
