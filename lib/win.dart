import 'package:flutter/material.dart';
import 'package:flutter_application_6/qno1.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';

class WinPass extends StatelessWidget {
  const WinPass({super.key});

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
          children: [LottieBuilder.network('https://assets7.lottiefiles.com/private_files/lf30_kvdn44jg.json'), 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.only(right: 113,left: 120),
                child: CircularPercentIndicator(
                  radius: 65,
                  animation: true,
                  lineWidth: 10.0,
                  percent: score/5,
                  progressColor: Colors.green,
                  circularStrokeCap: CircularStrokeCap.round,
                  center:  Text('$score/${questionsIndexLength.toString()}'),),
                  ),
                   Padding(padding: const EdgeInsets.only(top: 200,left: 112,right: 121),
            // ignore: prefer_const_constructors
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.green),
            height: 50,
            width: 180,child: const Center(
              // ignore: prefer_const_constructors
              child: Text('𝑨𝒘𝒆𝒔𝒐𝒎𝒆',
              style: TextStyle(color: Colors.white,fontSize: 20
              ),),
            ),),),
             const Text('\t   𝐂𝐨𝐧𝐠𝐫𝐚𝐭𝐮𝐥𝐚𝐭𝐢𝐨𝐧 \n 𝐘𝐨𝐮 𝐏𝐚𝐬𝐬𝐞𝐝 𝐓𝐡𝐞 𝐄𝐚𝐱𝐦'),
              ],
            ),
           
            
                // Padding(padding: EdgeInsets.only(right: 25,top: 30),
                // child: Text('\t     𝐂𝐨𝐧𝐠𝐫𝐚𝐭𝐮𝐥𝐚𝐭𝐢𝐨𝐧 \n 𝐘𝐨𝐮 𝐏𝐚𝐬𝐬𝐞𝐝 𝐓𝐡𝐞 𝐄𝐚𝐱𝐦'),)
            
          ],
        ),
        
    );
    
  }
}