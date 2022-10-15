import 'package:flutter/material.dart';
import 'package:studentlist/studentItem.dart';
import 'student.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tap on each Student of the List for more info'),
          centerTitle: true,
        ),
        body:
        ListView.builder(
          itemCount: students.length,
          itemBuilder: (BuildContext context,int index) {
            return StudentItem(student: students[index]);
          } ,  
        ) ,
        )
      );
  }
}

List<Student> students = [
  Student('1','Hadeel','image1.jpg','10'),
  Student('2 ','Layan','image2.jpg','8'),
  Student('3','Rama','image3.jpg','9'),
  Student('4','Bana','image4.jpg','6'),
];