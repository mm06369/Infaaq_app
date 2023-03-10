


import "package:flutter/material.dart";

class CaseBox extends StatelessWidget{

  final String description, title;
  final int amount;
  const CaseBox({super.key, this.description = "null", this.title = "null", this.amount = 0});

@override
Widget build(BuildContext context){
  return Column( 
          children: [ 
            const SizedBox(height: 20.0,),
            Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.blue[800],
             boxShadow: const [BoxShadow( color: Colors.black, blurRadius: 20.0, offset: Offset(5, 5))],
            ),
            padding: const EdgeInsets.only(top: 20.0, bottom: 8.0,left: 15.0, right: 15.0),
            alignment: Alignment.center,
            height: 280,
            width: MediaQuery.of(context).size.width - 30,
            child: Column( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("Title: $title",
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500,
            fontSize: 25.0),
            textAlign: TextAlign.left,
            ),
            Text("Description: $description",
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500,
            fontSize: 20.0),
            textAlign: TextAlign.left,
            ),
            Text("Amount Required: Rs.$amount",
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 18.0
            ),
            textAlign: TextAlign.center,
            ),
          ],
          )
          ),
          const SizedBox(height: 20.0,)
          ]
          );
      }
    }