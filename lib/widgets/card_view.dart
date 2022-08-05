import 'package:book_app2/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String id;
  final String imageUrl;
   CardView({required this.id, required this.imageUrl});

  void selectedCard(BuildContext context) {
    Navigator.of(context).pushNamed(BookDetailScreen.routeName, arguments: {
      'bookId' : id
    });
  }

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () => selectedCard(context),
      splashColor: Colors.white24,
      child: Card(
        elevation: 15,
        margin: EdgeInsets.all(5),
        child: Image.network(imageUrl, fit: BoxFit.fill,),
      ),
    );
  }
}