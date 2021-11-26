import 'package:chetan_koli/Assigment3/TimerAndStopWatch/stw.dart';
import 'package:chetan_koli/Assigment3/TimerAndStopWatch/timer.dart';
import 'package:flutter/material.dart';

class TimerAndStopWatch extends StatefulWidget {
  const TimerAndStopWatch({ Key? key }) : super(key: key);

  @override
  _TimerAndStopWatchState createState() => _TimerAndStopWatchState();
}

class _TimerAndStopWatchState extends State<TimerAndStopWatch> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Timer Project"),
          centerTitle: true,
          bottom: TabBar(
            controller: _tabController,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              const Tab(
                text: "Timer",
                icon: Icon(Icons.timer),
              ),
              const Tab(
                text: "Stopwatch",
                icon: Icon(Icons.watch),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const TimerScreen(),
            const Home(),
          ],
        ),
      ),
    );
  }
}
