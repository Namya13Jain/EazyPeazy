import 'package:eazy_peazy/db/db_helper.dart';
import 'package:eazy_peazy/models/reminders_model.dart';
import 'package:get/get.dart';

class ReminderController extends GetxController {
  @override
  void onReady() {
    //gets called on initialization
    super.onReady();
  }

  //method
  Future<int> addReminder({Reminder? reminder}) async {
    return await DBHelper.insert(reminder);
  }
}
