import 'package:get/get.dart';
import 'package:world_time_getx/view/navbar/navbar.dart';
import 'package:world_time_getx/view/pages/dashboard.dart';
import 'package:world_time_getx/view/pages/profile.dart';
import 'package:world_time_getx/view/pages/settings.dart';

class AppPage{
  
  static List<GetPage> routes = [
    GetPage(name: navbar, page: ()=> const NavBar()),
    GetPage(name: dashboard, page: ()=> const Dashboard()),
    GetPage(name: profile, page: ()=> const Profile()),
    GetPage(name: settings, page: ()=> const Settings()),
  ];
  
  
  static getnavbar() => navbar;
  static getdashboard() => dashboard;
  static getprofile() => profile;
  static getsettings() => settings;

  //
  static String navbar ='/';
  static String dashboard ='/dashboard';
  static String profile ='/profile';
  static String settings ='/settings';
  
  
}

