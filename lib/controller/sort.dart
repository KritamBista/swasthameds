import 'package:get/get.dart';

class SortContrroller extends GetxController {
  var selectedSortoptions = "Default".obs;
  var sortOptions = [
    'Default',
    'Price: Low to High',
    'Price: High to Low',
    'Rating',
    'Newest',
  ];
  setItems(String value) {
    selectedSortoptions.value = value;
  }
}
