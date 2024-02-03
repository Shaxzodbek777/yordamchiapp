import 'package:flutter/material.dart';
import 'package:yordamchiapp/pages/HomePage.dart';
import 'package:yordamchiapp/pages/KirishPage.dart';
class RoyxatdanOtish extends StatefulWidget {
  const RoyxatdanOtish({super.key});
static final String id = "RoyxatdanOtish";
  @override
  State<RoyxatdanOtish> createState() => _RoyxatdanOtishState();
}

class _RoyxatdanOtishState extends State<RoyxatdanOtish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Ro'yxatdan o'tish",style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            SizedBox(height: 15,),
            Container(
              width: 350,
              height: 46,
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 1,
                      color: Colors.blueAccent
                  )
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Telefon raqamingiz",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text("SMS kod", style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black
              ),
              onPressed: (){
                Navigator.pushNamed(context, HomePage.id);
              },
            ),
            SizedBox(height: 13,),
            Container(
              margin: const EdgeInsets.only(bottom: 40, right: 25),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, KirishPage.id);
                  },
                  child: const Text("Sizda akkaunt bormi? | Kirish", style:  TextStyle(color: Colors.blue),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

