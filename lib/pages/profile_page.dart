import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:GestureDetector(
          onTap: (){
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context){
                  return SizedBox(
                    height: 110,
                    child: Row(children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 16),
                            child: IconButton(onPressed: (){}, icon:Icon(Icons.image),iconSize: 55),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text("Gallery",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 16),
                            child: IconButton(onPressed: (){}, icon:Icon(Icons.camera),iconSize: 55),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text("Camera",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ]),
                  );
                }
            );
          },
          child: CircleAvatar(
            backgroundImage:NetworkImage("https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg"),
            radius: 50,
            backgroundColor: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
