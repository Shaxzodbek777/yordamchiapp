import 'package:flutter/material.dart';
import 'package:yordamchiapp/pages/RoyxatdanOtish.dart';
class KirishPage extends StatefulWidget {
  const KirishPage({super.key});
static final String id = "KirishPage";
  @override
  State<KirishPage> createState() => _KirishPageState();
}

class _KirishPageState extends State<KirishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Kirish",style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            Container(
              height: 46,
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  border: Border.all(
                      width: 1,
                      color: Colors.black26
                  )
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Telefon raqam",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 46,
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  border: Border.all(
                      width: 1,
                      color: Colors.black26
                  )
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Parolingiz",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text("Kirish", style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black
              ),
              onPressed: (){},
            ),
            SizedBox(height: 13,),
            Container(
              margin: const EdgeInsets.only(bottom: 40, right: 50),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, RoyxatdanOtish.id);
                  },
                  child: const Text("Sizda akkaunt yo'qmi? | Ro'yxatdan o'tish", style:  TextStyle(color: Colors.blue),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
