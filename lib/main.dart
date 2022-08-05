
import 'package:book_app2/screens/category_detail_screen.dart';
import 'package:book_app2/screens/detail_screen.dart';
import 'package:book_app2/screens/home_screen.dart';
import 'package:book_app2/screens/search_bar_screen.dart';
import 'package:book_app2/screens/tabs_screen.dart';
import 'package:book_app2/widgets/dark_theme.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

//void main() => runApp(MyApp());
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    var isDarkTheme = prefs.getBool("darkTheme") ?? false;
    return runApp(
      ChangeNotifierProvider<ThemeProvider>(
        child: MyApp(),
        create: (BuildContext context) {
          return ThemeProvider(isDarkTheme);
        },
      ),
    );
  });
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Book App',
        //  theme: notifier.darkTheme ? dark : light,
        
         theme: value.getTheme(),
        //  ThemeData(
        //   primarySwatch: Colors.blue,
        //  ),
   //      darkTheme: ThemeData.dark(),
          
          home: TabsScreen(),
                  routes: {
            CategoryDetailScreen.routeName : (ctx) => CategoryDetailScreen(),
            BookDetailScreen.routeName: (ctx) => BookDetailScreen(),
          },
      // }
      // child: MaterialApp(
      //     debugShowCheckedModeBanner: false,
      //     title: 'Book App',
      //   //  theme: notifier.darkTheme ? dark : light,
      //    theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //    ),
      //    darkTheme: ThemeData.dark(),
          
      //     home: TabsScreen(),
      //             routes: {
      //       CategoryDetailScreen.routeName : (ctx) => CategoryDetailScreen(),
      //       BookDetailScreen.routeName: (ctx) => BookDetailScreen(),
      //     },
                
                      );
      });
    }
  
    
       

    
  }


