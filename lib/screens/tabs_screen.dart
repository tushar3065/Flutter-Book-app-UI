
import 'package:book_app2/screens/search_bar_screen.dart';
import 'package:book_app2/widgets/dark_theme.dart';
import 'package:book_app2/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'categories_screen.dart';
import 'home_screen.dart';



class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectPageIndex = 0;

 final List<Widget> _pages =  [
      const HomeScreen(),
      CategoriesScreen(),
     HomeScreen(),
     HomeScreen()
    
    ];

  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[_selectPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.brightness_medium_sharp
          ), label: 'Theme', ),
        ],
        //selectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _selectPageIndex,
        onTap: (index) {
          if(index == 2) {
                     showSearch(context: context, delegate: Search());
          } 
          if(index == 3) {
                     ThemeProvider themeProvider = Provider.of<ThemeProvider>(context, listen: false);
                     themeProvider.swapTheme();
          } 
          
          setState(() {
            _selectPageIndex = index;
          });
        },
      ),
    );
  }
}