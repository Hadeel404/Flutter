// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber[50],
      ),
     home: Scaffold(
      appBar: AppBar(
        title: const Text("Center"),
      ),
      body: Container(
        padding:EdgeInsets.all(10) ,
        margin: EdgeInsets.all(30),
        // decoration: const BoxDecoration(
        // gradient: LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [Colors.white, Colors.blue])
        //     ),
        child: Column(
          children: [
            // top row , has the card and the icons :
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children :[
                Column(
                  children: [
                Card(
                  elevation: 0,
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  //color: Theme.of(context).colorScheme.surfaceVariant,
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                      child: Container(
                        child:Column (
                          children:[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/profile.jpg", width: 50 ,height: 50,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Mausem Rayamajhi"),
                                  Text("A trendsetter")
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Column(
                              children: const [
                                Text("846"),
                                Text("collect")
                              ],   
                            ),
                            Column(
                              children: const [
                                Text("846"),
                                Text("collect")
                              ],   
                            ),
                            Column(
                              children: const [
                                Text("846"),
                                Text("collect")
                              ],   
                            ),
                            Column(
                              children: const [
                                Text("846"),
                                Text("collect")
                              ],   
                            )
                          ],)
                        ] 
                      )
                      )
                      ),
                  ),
                ),
                Row(
                  //padding:EdgeInsets.all(20),
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                        // Icon(Icons.account_balance_wallet),
                        // Icon(Icons.fire_truck),
                        // Icon(Icons.message),
                        // Icon(Icons.attach_money_rounded),

                    Column(
                      children: const [
                        Icon(Icons.account_balance_wallet),
                        Text("Wallet")
                    ],),
                    Column(children: const [
                      Icon(Icons.fire_truck),
                      Text("Delivary")
                    ],),
                    Column(children: const [
                      Icon(Icons.message),
                      Text("Message")
                    ],),
                    Column(children: const [
                      Icon(Icons.attach_money_rounded),
                      Text("Service")
                    ],),
                  ],
                )
                
              ],
                )
              ]
            ),
            //Second row has the bottom cards :
            Row(
              children:  [
                 Card(
                  elevation: 0,
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  //color: Theme.of(context).colorScheme.surfaceVariant,
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                      child: Container(
                        child:Row (
                          children: [
                            Image.asset("assets/images/profile.jpg", width: 20 ,height: 10,),
                          ],
                        ),
                      ),
                    )
                  ),
                  ),
                
              ],
            )
          ]),
      ),
      ),
    );
  }
}

