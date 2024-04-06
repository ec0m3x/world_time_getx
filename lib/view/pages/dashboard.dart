import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:world_time_getx/controllers/time_controller.dart';
import 'package:world_time_getx/view/pages/addtask.dart';
import 'package:world_time_getx/view/pages/edit_profile.dart';
import 'package:world_time_getx/view/pages/projects.dart';
import 'package:world_time_getx/view/pages/reminders.dart';
import 'package:world_time_getx/view/pages/tasklist.dart';
import 'package:world_time_getx/view/pages/today.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    TimeController controller = Get.put(TimeController());
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
              ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const Reminders());
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blueAccent.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Icon(Icons.notification_important_outlined, size: 80,),
                        SizedBox(height: 10),
                        Text('Reminders'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const Tasklist());
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blueAccent.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Icon(Icons.web_asset, size: 80,),
                        SizedBox(height: 10),
                        Text('Tasklist'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const AddTask());
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blueAccent.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Icon(Icons.add_task, size: 80,),
                        SizedBox(height: 10),
                        Text('Add task'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const Today());
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blueAccent.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Icon(Icons.today_outlined, size: 80,),
                        SizedBox(height: 10),
                        Text('Today'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const EditProfile());
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blueAccent.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Icon(Icons.edit_attributes_outlined, size: 80,),
                        SizedBox(height: 10),
                        Text('Edit profile'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const Projects());
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blueAccent.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Icon(Icons.settings_applications_outlined, size: 80,),
                        SizedBox(height: 10),
                        Text('Projects'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 50),
          const Text('This is the current time:', 
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  ),
                ),
          Obx(() {
            return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent.withOpacity(0.5),
                border: Border.all(color: Colors.black),
              ),
              child: Text(
                '${controller.time.value} Uhr',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

