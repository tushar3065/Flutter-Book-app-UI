
import 'package:book_app2/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
   final String id;
   final String imageUrl;
  // final String title;
  // final String authorName;
  // final String description;
  // final String downloadUrl;

   BookItem(
       {
    required this.id,
  //     this.title,
     required  this.imageUrl,
  //     this.description,
  //     this.authorName,
  //     this.downloadUrl
  }
  );

  void selectedBook(BuildContext context) {
    Navigator.of(context).pushNamed(BookDetailScreen.routeName, arguments: {
      'bookId': id,
      // 'imageUrl': imageUrl,
      // 'title': title,
      // 'author': authorName,
      // 'description': description,
      // 'url': downloadUrl,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedBook(context),
      splashColor: Colors.white24,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Card(
          elevation: 5,
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
            ),
         
        ),
      ),
    );
  }
}
