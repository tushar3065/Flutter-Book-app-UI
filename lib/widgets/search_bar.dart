import 'package:book_app2/screens/detail_screen.dart';
import 'package:book_app2/widgets/dummy_data.dart';
import 'package:flutter/material.dart';

class Search extends SearchDelegate<dynamic> {
  // final books = [
  //   'Civil',
  //   'Comp',
  //   'computing',
  //   'Meta',
  //   'Mech',
  //   'Prod',
  //   'Physics',
  // ];
  final books  = dummyBooks;
  final recent = [];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
    //throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));

    //  throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
  //  throw UnimplementedError();
  return Card(
    child: Text(query,
  ));
  
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    //throw UnimplementedError()
    final sugg = query.isEmpty
        ? recent
        : books
        .where((value) => value.title
        .startsWith(query)).toList();
    
    print(books);
    //bprint(sugg[0]);
    return ListView.builder(
      itemBuilder: (ctx, index) => ListTile(
         onTap: () {
         // Navigator.of(context).pushNamed( const BookDetailScreen());
         query = sugg[index].title;
        // recent.add(query);
         Navigator.of(context).pushNamed(BookDetailScreen.routeName, arguments: {
           'bookId': sugg[index].id,
         } ,
         );
     //   recent.add(query);
        query = '';
        },
        leading: CircleAvatar(backgroundImage: NetworkImage(sugg[index].imageUrl,),)
        ,
        title: 
        RichText(
            text: TextSpan(text: sugg[index].title
            .substring(0, query.length),
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [TextSpan(text: sugg[index].title.substring(query.length), style: const TextStyle(color: Colors.grey))]
            )
            
           ),
        
//      Text(sugg[index].title),
      ),
      itemCount: sugg.length,
    );
  }
}

    // Navigator.of(context).pushNamed(BookDetailScreen.routeName, arguments: {
    //   'bookId': id,