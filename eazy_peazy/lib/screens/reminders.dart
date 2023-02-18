import 'package:eazy_peazy/controllers/reminder_controller.dart';
import 'package:eazy_peazy/helper/buttons.dart';
import 'package:eazy_peazy/screens/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Reminders extends StatefulWidget {
  const Reminders({super.key});

  @override
  State<Reminders> createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  DateTime _selectedDate = DateTime.now();
  final _reminderController = Get.put(ReminderController());
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.2,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Reminders",
          style:
              TextStyle(color: Colors.white, fontFamily: 'Mont', fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          color: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, 'home_screen');
          },
        ),
      ),
      body: /* SingleChildScrollView(
        child: */
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //date
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenHeight(10),
                vertical: getProportionateScreenWidth(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //About Date
                Text(
                  DateFormat.yMMMMd().format(DateTime.now()),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 87, 89, 91),
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(5),
                ),
                //Today text
                const Text(
                  "Today",
                  style: TextStyle(
                    color: Color.fromARGB(255, 19, 18, 18),
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          //adding the calendar
          DatePicker(
            DateTime.now(),
            height: getProportionateScreenHeight(100),
            width: getProportionateScreenWidth(80),
            initialSelectedDate: DateTime.now(),
            selectionColor: Theme.of(context).primaryColor,
            selectedTextColor: Colors.white,
            daysCount: 30,
            dateTextStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 87, 89, 91),
            ),
            monthTextStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 87, 89, 91),
            ),
            dayTextStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 87, 89, 91),
            ),
            onDateChange: (date) {
              _selectedDate = date;
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15)),
                child: const Text(
                  "Wanna add a reminder",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: MyButton(
                    label: "+Reminder",
                    onTap: () {
                      Navigator.pushNamed(context, 'add_reminder');
                    }),
              ),
            ],
          ),
          _showReminders(),
        ],
      ),
      //),
    );
  }

  _showReminders() {
    return Expanded(
      child: Obx(() {
        return ListView.builder(
            itemCount: _reminderController.reminderList.length,
            itemBuilder: (_, context) {
              print(_reminderController.reminderList.length);
              return Container(
                width: getProportionateScreenWidth(100),
                height: getProportionateScreenHeight(50),
                color: Color.fromRGBO(248, 72, 72, 0.8),
              );
            });
      }),
    );
  }
}
