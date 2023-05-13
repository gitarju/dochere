import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dochere/pages/sub_pages/datas.dart';

class SchedulePage extends StatefulWidget {
  SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appoinment'),
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(
            text: ('UPCOMMING'),
          ),
          Tab(
            text: ('COMPLETED'),
          ),
          Tab(
            text: ('CANCELD'),
          )
        ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        Container(
            margin: EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: (docdata.data.length),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black45,
                  ),
                  margin: EdgeInsets.all(10),
                  height: 150,
                  width: 340,
                  child: Column(children: [
                    ListTile(
                      title: Text('${docdata.data[index].name}'),
                      subtitle: Text('${docdata.data[index].quali}'),
                      trailing: CircleAvatar(
                          backgroundImage:
                              NetworkImage('${docdata.data[index].image}')),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.calendar_month_sharp),
                        ),
                        Text('date'),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.timer_sharp),
                        ),
                        Text('time'),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.control_point_outlined),
                        ),
                        Text('confirm')
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 145,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white38),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 45, top: 5),
                            child: Text('cancel'),
                          ),
                        ),
                        Container(
                          width: 145,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40, top: 5),
                            child: Text('reschedule'),
                          ),
                        )
                      ],
                    )
                  ]),
                );
              },
            )),
        Container(
            margin: EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: (docdata.data.length),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange,
                  ),
                  margin: EdgeInsets.all(10),
                  height: 150,
                  width: 340,
                  child: Column(children: [
                    ListTile(
                      title: Text('${docdata.data[index].name}'),
                      subtitle: Text('${docdata.data[index].quali}'),
                      trailing: CircleAvatar(
                          backgroundImage:
                              NetworkImage('${docdata.data[index].image}')),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.calendar_month_sharp),
                        ),
                        Text('date'),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.timer_sharp),
                        ),
                        Text('time'),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.control_point_outlined),
                        ),
                        Text('confirm')
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 145,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white38),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 45, top: 5),
                            child: Text('cancel'),
                          ),
                        ),
                        Container(
                          width: 145,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40, top: 5),
                            child: Text('reschedule'),
                          ),
                        )
                      ],
                    )
                  ]),
                );
              },
            )),
        Container(
            margin: EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: (docdata.data.length),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                  margin: EdgeInsets.all(10),
                  height: 150,
                  width: 340,
                  child: Column(children: [
                    ListTile(
                      title: Text('${docdata.data[index].name}'),
                      subtitle: Text('${docdata.data[index].quali}'),
                      trailing: CircleAvatar(
                          backgroundImage:
                              NetworkImage('${docdata.data[index].image}')),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.calendar_month_sharp),
                        ),
                        Text('date'),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.timer_sharp),
                        ),
                        Text('time'),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.control_point_outlined),
                        ),
                        Text('confirm')
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 145,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white38),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 45, top: 5),
                            child: Text('cancel'),
                          ),
                        ),
                        Container(
                          width: 145,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40, top: 5),
                            child: Text('reschedule'),
                          ),
                        )
                      ],
                    )
                  ]),
                );
              },
            )),
      ]),
    );
  }
}
