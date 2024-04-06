import 'package:get/get.dart';
import 'dart:async'; // Import the dart:async package
import 'package:intl/intl.dart';

class TimeController extends GetxController {

var time = ' '.obs;

  @override
  void onInit() {

    Timer.periodic(const Duration(seconds: 1), (Timer t) => updateTime());
    super.onInit();
  }

  void updateTime() {
    time.value = DateFormat('hh:mm:ss').format(DateTime.now());
  }
}