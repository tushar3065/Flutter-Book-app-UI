import 'package:book_app2/models/branch.dart';
import 'package:book_app2/widgets/category_detail.dart';
import 'package:book_app2/widgets/dummy_data.dart';
import 'package:flutter/material.dart';

class CategoryDetailScreen extends StatelessWidget {
  static const routeName = '/category-detail-screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final branchId = routeArgs['id'];
    final branchName = routeArgs['title'];
    final branchBooks = dummyBooks.where(
      (book) {
        return book.branch.contains(branchId);
      },
    ).toList();

    print(branchBooks);

    return Scaffold(
      appBar: AppBar(title: Text(branchName!)),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return CategoryDetailItem(
            id: branchBooks[index].id,
            title: branchBooks[index].title,
            authorName: branchBooks[index].author,
            imageUrl: branchBooks[index].imageUrl,
            publisher: branchBooks[index].publication,
          );
        },
       
        itemCount: branchBooks.length,
      ),
    );
  }
}
