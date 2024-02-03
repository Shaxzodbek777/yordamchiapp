import 'package:flutter/material.dart';
class ElonlarPage extends StatefulWidget {
  const ElonlarPage({super.key});
static final String id = "ElonlarPage";
  @override
  State<ElonlarPage> createState() => _ElonlarPageState();
}

class _ElonlarPageState extends State<ElonlarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feruz", style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF1F1F1F),
        actions: [

        ],
      ),
    );
  }
}
