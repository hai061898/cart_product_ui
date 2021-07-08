import 'package:cart/pages/detail/controller/controller_detail.dart';
import 'package:get/get.dart';

class DetailBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<DetailController>(() => DetailController());
  }
}