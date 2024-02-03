import 'package:flutter/material.dart';
import 'package:yordamchiapp/pages/HomePage.dart';
import 'package:yordamchiapp/Ustils/Strings.dart';
import 'package:yordamchiapp/pages/registar_page.dart';

import 'HomePage.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});
  static final String id = "IntroPage";
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  late PageController _pageController;
  int covariantIndex = 0;

  @override
  void initState() {
    _pageController =PageController(
        initialPage: 0
    );
    super.initState();
  }


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page){
              setState(() {
                covariantIndex = page;
              });
            },
            children: [
              makePage(
                image: "assets/images/intro_1.png",
                title: Strings.stipOneTitle,
                content: Strings.stipOneContent,
              ),
              makePage(
                image: "assets/images/intro_2.png",
                title: Strings.stipTwoTitle,
                content: Strings.stipTwoContent,
              ),
              makePage(
                image: "assets/images/intro_3.png",
                title: Strings.stipThreeTitle,
                content: Strings.stipThreeContent,

              )

            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndecator(),
            ),


          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              covariantIndex == 2
                  ? Container(
                margin: const EdgeInsets.only(bottom: 40, right: 50),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, RegistarPage.id);
                  },
                  child: const Icon(Icons.navigate_next, size: 50,)
                ),
              )
                  : Container(),
            ],

          )


        ],

      ),
    );
  }

  Widget makePage({image, title, content, }){
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50, bottom: 50),
      child: (
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [




                  Padding(

                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(image),


                  ),
                  SizedBox(height: 70,),
                  Text(title, style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                  Text(content, style: TextStyle(color: Colors.grey, fontSize: 20), textAlign: TextAlign.center,),


                ],
              ),
            ],
          )
      ),
    );
  }

  Widget _indecator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30:6,

      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }

  List<Widget> _buildIndecator(){
    List<Widget> indecator = [];
    for(int i= 0; i<3; i++ ){
      if (covariantIndex == i){
        indecator.add(_indecator(true));
      }
      else {
        indecator.add(_indecator(false));
      }
    }
    return indecator;

  }
}