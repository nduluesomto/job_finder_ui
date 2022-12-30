import 'package:flutter/material.dart';
import 'package:onboarding_screen/screens/views/featured.dart';
import 'package:onboarding_screen/screens/views/recent_jobs.dart';
import 'package:onboarding_screen/screens/views/sub_cat.dart';
import 'package:onboarding_screen/screens/views/sub_tabs.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      floatingActionButton: Align(
        alignment: const Alignment(0.0, 1.1),
        child: FloatingActionButton(
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 0.0,
          onPressed: () {},
          child: const Icon(Icons.add, size: 30),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded,
                  color: Colors.deepOrangeAccent, size: 30),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.group, size: 30), label: ''),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 11, right: 11, top: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "lib/images/customer_service.png",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Text('Mary R. Arnold',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))
                      ],
                    ),
                    const Icon(Icons.message_rounded),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white),
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search",
                          disabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none),
                    )),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      Categories(
                          name: 'Design', imgPath: "lib/images/design.png"),
                      Categories(name: 'Tech', imgPath: "lib/images/tech.png"),
                      Categories(
                          name: 'Business', imgPath: "lib/images/chart.png"),
                      Categories(
                          name: 'Photos', imgPath: "lib/images/camera.png"),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const SubTab(mainCategory: 'Featured Jobs'),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      FeaturedSlides(
                          brandLogo: 'lib/images/addidas.png',
                          nameOfCompany: 'Google LLC',
                          jobLocation: 'Pune, Maharashtra',
                          datePosted: '2',
                          jobTime: 'Fulltime',
                          jobRole: 'Sr. UX Designer'),
                      FeaturedSlides(
                        brandLogo: 'lib/images/green.png',
                        nameOfCompany: 'Greeny',
                        jobLocation: 'Moscow, Russia',
                        datePosted: '4',
                        jobTime: 'Part-time',
                        jobRole: 'UX/UI Designer',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const SubTab(mainCategory: 'Recently Jobs'),
                const SizedBox(height: 25),
                const RecentJobs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
