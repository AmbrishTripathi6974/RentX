import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/provider/house_filter_area_provider.dart';
import 'package:flutter_application_2/provider/house_filter_provider.dart';
import 'package:flutter_application_2/ui/house_filter_page.dart';
import 'package:provider/provider.dart';

class HouseRentalApp extends StatelessWidget {
  const HouseRentalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (BuildContext context) => HouseFilterProvider(),
      child: ChangeNotifierProvider(
        create: (context) => HouseFilterAreaProvider(),
        child: MaterialApp(
          routes: {
          "/": (context) => HomePage(),
          "/search/filter" :(context) => HouseFilterPage(),
          },
        ),
      ),
    );
  }
}
