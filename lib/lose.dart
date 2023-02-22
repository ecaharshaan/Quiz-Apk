import 'package:flutter/material.dart';
import 'package:flutter_application_6/main.dart';
import 'package:flutter_application_6/qno1.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class LooSe extends StatelessWidget {
  const LooSe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,elevation: 0,
          title: const Text("Result",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 40,
            ),
          ),
          centerTitle: true,
          
          leading: IconButton(
            onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctr) => const QeNo(),));
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          
         ),   
        ),
        body: Stack(
          children: [LottieBuilder.network('https://assets3.lottiefiles.com/packages/lf20_nwyegy0h.json'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.only(right: 113,left: 120),
                child: CircularPercentIndicator(
                  radius: 65,
                  animation: true,
                  lineWidth: 10.0,
                  percent: score/5,
                  progressColor: const Color.fromARGB(255, 255, 70, 3),
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text("$score/${questionsIndexLength.toString()}"),),
                  ),
                   Padding(padding: const EdgeInsets.only(top: 200,left: 112,right: 121),
            // ignore: prefer_const_constructors
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 203, 47, 0)),
            height: 50,
            width: 180,child: const Center(
              // ignore: prefer_const_constructors
              child: Text('Ooops',
              style: TextStyle(color: Colors.white,fontSize: 20
              ),),
            ),
            ),),
            Padding(padding: const EdgeInsets.only(top: 20,),
            child: TextButton(onPressed:(){Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctr) => const MyApp()
                      ));},
             child: const Text('Trying Again',
             style: TextStyle(color: Colors.blue,fontSize: 15),)),)
             
              ],
            ),
           
            
                // Padding(padding: EdgeInsets.only(right: 25,top: 30),
                // child: Text('\t     𝐂𝐨𝐧𝐠𝐫𝐚𝐭𝐮𝐥𝐚𝐭𝐢𝐨𝐧 \n 𝐘𝐨𝐮 𝐏𝐚𝐬𝐬𝐞𝐝 𝐓𝐡𝐞 𝐄𝐚𝐱𝐦'),)
            
          ],
        ),
        
    );
    
  }
}