import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static final String id = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1F1F), // Изменение цвета заднего фона
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1F1F),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        title: Text(
          "Feruz",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.backspace,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            height: 350,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,

            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                color: Color(0xFF1F1F1F),
                height: 3007,
                width: 382,
                child: Column(
                  children: [
                    Container(
                      height: 117,
                      width: 382,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20) ),
                          color: Color(0xFF7095DD)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 16,),
                          Container (
                              padding: EdgeInsets.only(top: 10, left: 10,right: 10, bottom: 10),
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.black
                              ),
                              child: Container(
                                height: 251,
                                width: 382,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(75),
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.person, color: Colors.black,
                                ),
                              )
                          ),
                          SizedBox(width: 12,),
                          Text("Buyurtmachi", style: TextStyle(color: Colors.black, fontFamily: "Poppins", fontSize: 20),)
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 382,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                          color: Colors.white
                      ),
                      child: Column(
                        children: [
                          SizedBox(width: 16,),
                          SizedBox(height: 16,),
                          Text("Ajorib Sharxlarga ega bo'lgan mutaxasislar",textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontFamily: "Poppins"),),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                        height: 150,
                        width: 382,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Color(0xFF2B2B2B)
                        ),
                        child:Column(
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                SizedBox(width: 16,),
                                Container(
                                    padding: EdgeInsets.only(top: 10, left: 10,right: 10, bottom: 10),
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.black
                                    ),
                                    child: Container(
                                      height: 251,
                                      width: 382,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(75),
                                        color: Colors.white,

                                      ),
                                      child: Icon(
                                        Icons.folder, color: Colors.black,
                                      ),
                                    )
                                ),
                                SizedBox(width: 12,),
                                Text(
                                  'Ijrochi',
                                  style: TextStyle(
                                    fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: "Poppens",
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 24,),
                              ],
                            ),
                            SizedBox(height: 24,),
                            Text("Ajoyib sharhlarga ega bo'lgan mutaxassislar",style: TextStyle(color: Colors.white, fontFamily: "Poppins"),)
                          ],
                        )
                    ),
                    SizedBox(height: 16,),
                    Container(
                        height: 150,
                        width: 382,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Color(0xFF2B2B2B)
                        ),
                        child:Column(
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                SizedBox(width: 16,),
                                Container(
                                    padding: EdgeInsets.only(top: 10, left: 10,right: 10, bottom: 10),
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.black
                                    ),
                                    child: Container(
                                      height: 251,
                                      width: 382,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(75),
                                        color: Colors.white,

                                      ),
                                      child: Icon(
                                        Icons.domain_verification_sharp, color: Colors.black,
                                      ),
                                    )
                                ),
                                SizedBox(width: 12,),
                                Text(
                                  'Ijrochi',
                                  style: TextStyle(
                                    fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: "Poppens",
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 24,),
                              ],
                            ),
                            SizedBox(height: 24,),
                            Text("Ajoyib sharhlarga ega bo'lgan mutaxassislar",style: TextStyle(color: Colors.white, fontFamily: "Poppins"),)
                          ],
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
