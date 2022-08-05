import 'package:book_app2/screens/category_detail_screen.dart';
import 'package:book_app2/widgets/category_detail.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String branchImage;
  final String branchName;
  final String branchId;

  CategoryItem({required this.branchImage, required this.branchName,required this.branchId});

  void selectedCategory(BuildContext context) {
  Navigator.of(context).pushNamed(CategoryDetailScreen.routeName, arguments: {
      'id': branchId,
      'title': branchName,
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
          height: 170,
          width: 200,
          child: 
             InkWell(
               onTap: () => selectedCategory(context),
               child: Card(
                 clipBehavior: Clip.antiAliasWithSaveLayer,
                 semanticContainer: true,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                        branchImage,
                        height: 160,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        ),
                        const SizedBox(height:10),
                     Padding(
                       padding: const EdgeInsets.all(7),
                       child: Text(branchName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis , softWrap: true,
                       ),
                     ),
                  ],
                ),
                         ),
             ),
          );
  }
}