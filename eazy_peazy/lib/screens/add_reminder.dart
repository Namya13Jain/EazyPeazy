import 'package:eazy_peazy/controllers/reminder_controller.dart';
import 'package:eazy_peazy/helper/buttons.dart';
import 'package:eazy_peazy/helper/input_field.dart';
import 'package:eazy_peazy/models/reminders_model.dart';
import 'package:eazy_peazy/screens/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:eazy_peazy/models/reminders_model.dart';

class AddReminderPage extends StatefulWidget {
  const AddReminderPage({super.key});

  @override
  State<AddReminderPage> createState() => _AddReminderPageState();
}

class _AddReminderPageState extends State<AddReminderPage> {
  final ReminderController _reminderController = Get.put(ReminderController());
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String _endTime = "0:00 AM";
  String _startTime = DateFormat('hh:mm a').format(DateTime.now()).toString();
  int _selectedRemind = 5;
  List<int> remindList = [
    5,
    10,
    15,
    20,
  ];
  String _selectedRepeat = "None";
  List<String> repeatList = [
    "None",
    "Daily",
    "Weekly",
  ];
  int _selectedColor = 0;
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
            Navigator.pushNamed(context, 'reminders');
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 20, left: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Add Reminder",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 21, 21, 21),
                ),
              ),
              MyInputField(
                title: "Title",
                hint: "Enter title here",
                controller: _titleController,
              ),
              MyInputField(
                title: "Note",
                hint: "Enter your note",
                controller: _noteController,
              ),
              MyInputField(
                title: "Date",
                hint: DateFormat.yMd().format(_selectedDate),
                widget: IconButton(
                  onPressed: () {
                    _getDateFromUser();
                  },
                  icon: const Icon(Icons.calendar_today_outlined),
                  color: const Color.fromARGB(255, 109, 108, 108),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: MyInputField(
                      title: "Start Date",
                      hint: _startTime,
                      widget: IconButton(
                        onPressed: () {
                          _getTimeFromUser(isStartTime: true);
                        },
                        icon: const Icon(Icons.access_time_rounded),
                        color: const Color.fromARGB(255, 109, 108, 108),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(12),
                  ),
                  Expanded(
                    child: MyInputField(
                      title: "End Date",
                      hint: _endTime,
                      widget: IconButton(
                        onPressed: () {
                          _getTimeFromUser(isStartTime: false);
                        },
                        icon: const Icon(Icons.access_time_rounded),
                        color: const Color.fromARGB(255, 109, 108, 108),
                      ),
                    ),
                  ),
                ],
              ),
              MyInputField(
                title: "Remind Me",
                hint: "$_selectedRemind minutes early",
                widget: DropdownButton(
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: const Color.fromARGB(255, 109, 108, 108),
                    ),
                    underline: Container(
                      height: 0,
                    ),
                    items:
                        remindList.map<DropdownMenuItem<String>>((int value) {
                      return DropdownMenuItem<String>(
                        value: value.toString(),
                        child: Text(
                          value.toString(),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedRemind = int.parse(newValue!);
                      });
                    }),
              ),
              //For Repeat
              MyInputField(
                title: "Repeat",
                hint: "$_selectedRepeat",
                widget: DropdownButton(
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: const Color.fromARGB(255, 109, 108, 108),
                    ),
                    underline: Container(
                      height: 0,
                    ),
                    items: repeatList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedRepeat = newValue!;
                      });
                    }),
              ),
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              //For color
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Color",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(8),
                      ),
                      //Wrap is the widget which helps to align things horizontally
                      Wrap(
                          children: List<Widget>.generate(2, (int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedColor = index;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: getProportionateScreenWidth(8)),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundColor: index == 0
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              child: _selectedColor == index
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 16,
                                    )
                                  : Container(),
                            ),
                          ),
                        );
                      })),
                    ],
                  ),
                  MyButton(
                      label: "Add ",
                      onTap: () {
                        Navigator.pushNamed(context, 'reminders');
                      }),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //validation of data added in the form
  _validateData() {
    if (_titleController.text.isNotEmpty && _noteController.text.isNotEmpty) {
      //add to database
      _addTaskToDb();
      Navigator.pushNamed(context, 'reminder');
    } else if (_titleController.text.isEmpty || _noteController.text.isEmpty) {
      //make a snackbar for it later
      print("All fields are required");
    }
  }

  _addTaskToDb() async {
    int value = await _reminderController.addReminder(
        reminder: Reminder(
      note: _noteController.text,
      title: _titleController.text,
      date: DateFormat.yMd().format(_selectedDate),
      startTime: _startTime,
      endTime: _endTime,
      remind: _selectedRemind,
      repeat: _selectedRepeat,
      color: _selectedColor,
      isCompleted: 0,
    ));
    print("My id is " + "$value");
  }

  _getDateFromUser() async {
    DateTime? _pickerDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2121));
    if (_pickerDate != null) {
      setState(() {
        _selectedDate = _pickerDate;
      });
    } else {
      print("It's someting else");
    }
  }

  _getTimeFromUser({required bool isStartTime}) async {
    var pickedTime = await _showTimePicker();
    String _formattedTime = pickedTime.format(context);
    if (pickedTime == null) {
      print("Time cancelled");
    } else if (isStartTime == true) {
      _startTime = _formattedTime;
    } else if (isStartTime == false) {
      _endTime = _formattedTime;
    }
  }

  _showTimePicker() {
    return showTimePicker(
      initialEntryMode: TimePickerEntryMode.input,
      context: context,
      initialTime: TimeOfDay(
        hour: int.parse(_startTime.split(":")[0]),
        minute: int.parse(_startTime.split(":")[1].split(" ")[0]),
      ),
    );
  }
}
