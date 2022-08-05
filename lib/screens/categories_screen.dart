import 'package:book_app2/models/branch.dart';
import 'package:book_app2/widgets/category.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  List branches = <Branch>[
    Branch(
        branchImage: "assets/images/civil.jpeg",
        branchName: 'Civil',
        branchId: 'a1'),
    Branch(
        branchImage: "assets/images/comp.jpeg",
        branchName: 'Computer',
        branchId: 'a2'),
    Branch(
        branchImage: "assets/images/etc.jpeg",
        branchName: 'Electronics and Telecommunications',
        branchId: 'a3'),
    Branch(
        branchImage: "assets/images/meta.jpeg",
        branchName: 'Metallurgy and Material Sciences',
        branchId: 'a4'),
    Branch(
        branchImage: "assets/images/mech.jpeg",
        branchName: 'Mechanical',
        branchId: 'a5'),
    Branch(
        branchImage: "assets/images/math.jpeg",
        branchName: 'Mathematics',
        branchId: 'a6'),
    Branch(
        branchImage: "assets/images/physics.png",
        branchName: 'Physics',
        branchId: 'a7'),
    Branch(
        branchImage: "assets/images/prod.jpeg",
        branchName: 'Production',
        branchId: 'a8'),
    Branch(
        branchImage: "assets/images/electrical.jpeg",
        branchName: 'Electrical',
        branchId: 'a9'),
    Branch(
        branchImage: "assets/images/instru.jpeg",
        branchName: 'Instrumentation and Control',
        branchId: 'a10'),

    // "assets/images/civil.jpeg",
    // "assets/images/comp.jpeg",
    // "assets/images/etc.jpeg",
    // "assets/images/meta.jpeg",
    // "assets/images/mech.jpeg",
    // "assets/images/math.jpeg",
    // "assets/images/physics.jpeg",
    // "assets/images/prod.jpeg",
    // "assets/images/electrical.jpeg",
    // "assets/images/instru.jpeg",
  ];

  // List branchNames = const [
  //   'Civil', 'Computer', 'E and TC', 'Metallurgy', 'mech', 'math', 'physics', 'prod', 'electrical', 'instru'
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Categories'),
        ),
        body: GridView(
          padding: const EdgeInsets.all(10),
          children: branches
              .map((branchData) => CategoryItem(
                    branchImage: branchData.branchImage,
                    branchName: branchData.branchName,
                    branchId: branchData.branchId,
                  ))
              .toList(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.75,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ));
  }
}
