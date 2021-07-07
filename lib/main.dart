
import 'package:cart/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cart',
      theme: ThemeData(  
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RoutesName.HOME,
      // getPages: RoutesPage.routes,
     
    );
  }
}
