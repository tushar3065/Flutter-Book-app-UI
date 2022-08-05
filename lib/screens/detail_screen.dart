import 'package:book_app2/widgets/book_detail.dart';
import 'package:book_app2/widgets/book_suggestion.dart';
import 'package:book_app2/widgets/dummy_data.dart';
import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  static const routeName = 'book-detail';

  const BookDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
    final selectedBookId = routeArgs['bookId'];
     final branchBooks = dummyBooks.firstWhere(
      (book) {
        return book.id.contains(selectedBookId!);
      },
    );
    //toList();

    print(branchBooks);
    print(selectedBookId);
    return Scaffold(
      appBar: AppBar(
        title: Text(branchBooks.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BookDetail(
                imageUrl: branchBooks.imageUrl,
                bookTitle: branchBooks.title,
                authorName: branchBooks.author,
                description: branchBooks.description,
                year: branchBooks.year,
                edition: branchBooks.edition,
                publisher: branchBooks.publication,
                pages: branchBooks.pages,
                size: branchBooks.size,
                ),
        //                  const  SizedBox(height: 10,),
              const  Divider(indent:3 ,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: BookSuggestion(detailScreenBookId: selectedBookId!,),
          )
          ],

        ),
      ),
    );
  }
}
