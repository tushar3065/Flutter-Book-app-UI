import 'package:book_app2/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class CategoryDetailItem extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;
  final String authorName;
  final String publisher;

  CategoryDetailItem(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.authorName,
      required this.publisher});

  void selectedBook(BuildContext context) {
    Navigator.of(context)
        .pushNamed(BookDetailScreen.routeName, arguments: {'bookId': id});
  }

  @override
  Widget build(BuildContext context) {
    // return InkWell(
    //   onTap: () => selectedBook(context),
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () => selectedBook(context),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Image.network(
                  imageUrl,
                  height: 150,
                  width: 110,
                  fit: BoxFit.fill,
                ),
                Flexible(
                  child: Container(
                      height: 135,
                      margin: const EdgeInsets.only(
                        left: 13,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 3,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(publisher,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 16,
                                //decoration: TextDecoration.underline
                              )),
                          const SizedBox(
                            height: 35,
                          ),
                          Text(authorName,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 16,
                              )),
                        ],
                      )),
                ),
              ],
            ),
            //      ),
            //  ),
          ),
        ),
        const Divider(
          indent: 5,
          thickness: 1,
        ),
      ],
    );
    // );
  }
}
