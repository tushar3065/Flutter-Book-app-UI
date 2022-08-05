import 'package:book_app2/widgets/dummy_data.dart';
import 'package:book_app2/widgets/home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Library"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        
        children: dummyBooks
            .map((bookData) => BookItem(
                  imageUrl: bookData.imageUrl,
                  id: bookData.id,
                ))
            .toList(),

        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
