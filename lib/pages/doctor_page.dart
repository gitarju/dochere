import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dochere/pages/sub_pages/datas.dart';

class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Container(

              height: MediaQuery.of(context).size.height * 2.7/3,
              width: MediaQuery.of(context).size.width ,


        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
              padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: MediaQuery.of(context).size.height * 1/22,
                  width: MediaQuery.of(context).size.width * 4.7/5,
                  // MediaQuery.of(context).size.width,
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.search,),padding: EdgeInsets.only(left: 2,top: 2,bottom: 1)),
                      Text("Search for Doctors")
                    ],
                  )),
            ),
               ListView.builder(
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                  itemCount: (docdata.data.length),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage('${docdata.data[index].image}')),
                      title: Text('${docdata.data[index].name}'),
                      subtitle: Text('${docdata.data[index].quali}'),
                    );
                  },
                ),

            ],
          ),
        ),
      )
      )
    );
  }
}
