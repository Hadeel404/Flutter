import 'package:flutter/material.dart';
import 'package:studentlist/student.dart';

class StudentItem extends StatelessWidget{
  final Student student;
  const StudentItem({super.key, required this.student});

  _showD(BuildContext context){
    showDialog(
      context: context,
       builder: (context) => AlertDialog(
        title: Text("${student.name}'s info" , style : TextStyle(color: Colors.amber)),
        content: Text(student.toString()),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).pop();
          },
          icon: Icon(Icons.add),
          label: Text(""),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).pop();
            }, 
          icon :const Icon(Icons.remove),
          label:Text(""),
          )
        ],
       )
      );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        _showD(context);
      }),
      child: Container(
      padding: const EdgeInsets.all(5),
      height: 150,
      child: Card(
        child: Row(
          children: [
            Image.asset('assets/images/${student.image}'),
            Expanded(
              child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(this.student.id),
                  Text(this.student.name),
                  Text(this.student.grade),
                  Text(this.student.image)
                ]),
            )
            )
          ]),
      ),
    )
    );
  }

}