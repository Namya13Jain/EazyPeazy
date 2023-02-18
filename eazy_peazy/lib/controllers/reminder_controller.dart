import 'package:eazy_peazy/db/db_helper.dart';
import 'package:eazy_peazy/models/reminders_model.dart';
import 'package:get/get.dart';

class ReminderController extends GetxController {
  @override
  void onReady() {
    //gets called on initialization
    super.onReady();
  }

  var reminderList = <Reminder>[].obs;
  //method
  Future<int> addReminder({Reminder? reminder}) async {
    return await DBHelper.insert(reminder);
  }

  //get all the data from the table
  void getTasks() async {
    List<Map<String, dynamic>> reminders = await DBHelper.query();
    reminderList.assignAll(
        reminders.map((data) => new Reminder.fromJSON(data)).toList());
  }
}
