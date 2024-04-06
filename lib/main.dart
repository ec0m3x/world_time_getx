import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:world_time_getx/model/routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppPage.getnavbar(), 
    getPages: AppPage.routes,
  ));
}
