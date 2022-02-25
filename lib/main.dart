import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calender_widget(),
    );
  }
}

class Calender_widget extends StatefulWidget {
  const Calender_widget({Key? key}) : super(key: key);

  @override
  State<Calender_widget> createState() => _Calender_widgetState();
}

class _Calender_widgetState extends State<Calender_widget> {
  late CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calender"),
          backgroundColor: Colors.blue.shade900,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TableCalendar(
                initialCalendarFormat: CalendarFormat.month,
                calendarController: _controller,
                calendarStyle: CalendarStyle(
                  todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  todayColor: Colors.blue.shade900,
                  selectedColor: Colors.green,
                ),
                headerStyle: HeaderStyle(
                  centerHeaderTitle: true,
                  formatButtonDecoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadiusDirectional.circular(8.0),
                  ),
                  formatButtonTextStyle: TextStyle(color: Colors.white),
                  formatButtonShowsNext: false,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                  child: Text("@ Ojo Omotuwa",
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue.shade900,
                      ))),
            ],
          ),
        ));
  }
}
