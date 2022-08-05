

import 'package:book_app2/widgets/book_suggestion.dart';
import 'package:book_app2/widgets/description_text.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  final String imageUrl;
  final String bookTitle;
  final String authorName;
  final String description;
  final String year;
  final String edition;
  final String publisher;
  final String pages;
  final String size;

  BookDetail({
    required this.imageUrl,
    required this.bookTitle,
    required this.authorName,
    required this.description,
    required this.year,
    required this.edition,
    required this.publisher,
    required this.pages,
    required this.size
  });




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                height: 300,
                width: 230,
                child: Image.network(imageUrl, fit: BoxFit.fill,),
              ),
            ),
          const  SizedBox(height: 10,),
          Text(bookTitle, overflow: TextOverflow.ellipsis, maxLines: 2, softWrap: true,
          style: const  TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const  SizedBox(height: 10,),
          Text(authorName, overflow: TextOverflow.ellipsis, maxLines: 3, softWrap: true,
          style: TextStyle(fontSize: 18),
          ),
          const  SizedBox(height: 20,),
          //Text(description, softWrap: true,),
          DescriptionText(text: description,),
          const  SizedBox(height: 30,),
         
          Text('Year :                     $year'),
          const  SizedBox(height: 10,),
          Text('Edition :                 $edition',),
          const  SizedBox(height: 10,),
          Text('Publisher :            $publisher'),
          const  SizedBox(height: 10,),
          Text('Pages :                  $pages '),
          const  SizedBox(height: 10,),
          Text('Size :                      $size '),


          
          const  SizedBox(height: 30,),

          Center(
            child: SizedBox(
              width: 150,
              child: ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.download,), label: const Text('Download', style: TextStyle(fontSize: 16),), 
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                

              ),),
            ),
          ),

          // const  SizedBox(height: 40,),
          // BookSuggestion(),
          

            
          ],
        ),
      ),
    );
  }
}