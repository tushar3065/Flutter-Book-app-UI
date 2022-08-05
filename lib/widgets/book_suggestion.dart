import 'package:book_app2/widgets/card_view.dart';
import 'package:book_app2/widgets/dummy_data.dart';
import 'package:flutter/material.dart';

class BookSuggestion extends StatelessWidget {
  final String detailScreenBookId;
  BookSuggestion({required this.detailScreenBookId});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Text(
              ' You may be intrested in',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            TextButton(
              child: const Text(
                'See all',
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
          ],
        ),
        //    SizedBox(height : 10),

        Container(
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return detailScreenBookId != dummyBooks[index].id
                  ? CardView(
                      id: dummyBooks[index].id,
                      imageUrl: dummyBooks[index].imageUrl)
                  : const SizedBox(
                      width: 10,
                    );
            },
            itemCount: dummyBooks.length,
          ),
        ),
      ],
    );
  }
}
