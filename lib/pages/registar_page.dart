import 'package:flutter/material.dart';
import 'package:yordamchiapp/pages/KirishPage.dart';
import 'package:yordamchiapp/pages/RoyxatdanOtish.dart';
import 'package:yordamchiapp/pages/button.dart';
class RegistarPage extends StatefulWidget {
  const RegistarPage({super.key});
static final String id = "RegistarPage";
  @override
  State<RegistarPage> createState() => _RegistarPageState();
}

class _RegistarPageState extends State<RegistarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Image(
              height: 331,
              width: 368,

              image: AssetImage('assets/images/intro_4.png'),
            ),
            SizedBox(height: 47,),
            Text("Ruyxatdan o'tish", style: TextStyle(color: Color(0xFF2A2A4D), fontSize: 35, fontFamily: "Poppins", fontWeight: FontWeight.bold),),
            SizedBox(height: 23,),
            Text("Explore all the existing job roles based ",textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF2A2A4D), fontSize: 14, fontFamily: "PoppinsRegular" ),),
           Text("on your interest and study major", textAlign: TextAlign.center, style: TextStyle(fontFamily: "PoppinsRegular", color: Color(0xFF2A2A4D)),),
            SizedBox(height: 88,),
            ElevatedButton(
              child: Text("Ruyxatdan o'tish", style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.bold),),
              style: buttonPrimary,

              onPressed: (){
                Navigator.pushNamed(context, RoyxatdanOtish.id);
              },
            ),
            SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.only(bottom: 40, right: 0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, KirishPage.id);
                  },
                  child: const Text("Sizda akkaunt bormi? | Kirish", style:  TextStyle(color: Color(0xFF7095DD), fontFamily: "Poppins"),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
