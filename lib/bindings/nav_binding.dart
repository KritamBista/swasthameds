import 'package:get/get.dart';
import 'package:swasthameds/controller/sort.dart';

class NavBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(NavBindings());
    Get.put(SortContrroller());
  }

}