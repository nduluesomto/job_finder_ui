import 'package:flutter/material.dart';

class FeaturedSlides extends StatelessWidget {
  final String brandLogo,
      nameOfCompany,
      jobLocation,
      datePosted,
      jobTime,
      jobRole;

  const FeaturedSlides(
      {Key? key,
      required this.brandLogo,
      required this.nameOfCompany,
      required this.jobLocation,
      required this.datePosted,
      required this.jobTime,
      required this.jobRole})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                brandLogo,
                height: 30,
                width: 25,
              ),
              Image.asset(
                "lib/images/icon.png",
                height: 30,
                width: 25,
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(nameOfCompany,
              style: const TextStyle(color: Colors.black45, fontSize: 16)),
          const SizedBox(height: 15),
          Text(jobRole,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black)),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.location_on),
              const SizedBox(width: 4),
              Text(jobLocation)
            ],
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5)),
            child: Text(jobTime),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$datePosted Days ago',
                style: const TextStyle(color: Colors.grey),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 13, right: 13, top: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  'Apply',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
