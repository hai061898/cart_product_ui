import 'package:cart/pages/home/bindings/home_binding.dart';
import 'package:cart/pages/home/view/home_page.dart';
import 'package:cart/routes/routes_name.dart';
import 'package:get/get_navigation/get_navigation.dart';

class RoutesPage {
  static const Home = RoutesName.HOME;
  static final routes = [
    GetPage(name: RoutesName.HOME, page: ()=>HomePage(), binding: HomeBinding()),
    
  ];
}
