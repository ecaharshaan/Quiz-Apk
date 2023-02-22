import 'package:flutter/material.dart';
import 'package:flutter_application_6/list.dart';
import 'package:flutter_application_6/provider.dart';
import 'package:flutter_application_6/win.dart';
import 'package:provider/provider.dart';

import 'lose.dart';

class QeNo extends StatelessWidget {
  const QeNo({super.key});

 @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('rebuild');
    // UpdatedApp 
      // ProVider firstProvider = Provider.of<ProVider>(context);
    return Consumer<ProVider>(
      builder: (context,firstProvider,child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "Quiz",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 40,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                
                  if (questionsIndex > 0) {
                    questionsIndex--;
                    optionsIndex--;
                  }
               
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 25),
                child: Row(
                  children: [
                    Container(
                      height: 35.08,
                      width: 68,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 5,
                              offset: const Offset(5, 5),
                              blurStyle: BlurStyle.normal,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Text(
                        "   ${questionsIndex + 1}/${questionsIndexLength.toString()}",
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22.5, left: 30),
                
                // ignore: prefer_const_constructors
                child: Text(
                  questions[questionsIndex],
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 40),
                child: Divider(
                  color: Colors.grey,
                  height: 50,
                  indent: 20,
                  thickness: 1,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: const Offset(5, 5),
                          blurStyle: BlurStyle.normal,
                        )
                      ], shape: BoxShape.circle, color: Colors.white),
                      height: 39,
                      width: 39,
                      child: const Icon(
                        Icons.question_mark,
                        size: 25,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('𝐂𝐡𝐨𝐨𝐬𝐞 𝐚𝐧 𝐀𝐧𝐬𝐰𝐞𝐫'),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) =>firstProvider.firstButton ? Colors.black : Colors.blue),
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)))),
                    onPressed: () {
                      firstProvider.firSt();
                      // setState(() {
                      //   check = true;
                      //   firstButton = true;
                      //   secondButton = false;
                      //   thirdButton = false;
                      //   forthButton = false;
                      //   buttonIndex = 0;
                        
                      // });
                    },
                    child:
                        // ignore: prefer_const_literals_to_create_immutables

                        Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(options[optionsIndex][0],
                          style: const TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  firstProvider.secondButton ? Colors.black : Colors.blue),
                          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {
                        firstProvider.seCond();
                        // setState(() {
                        //   check = true;
                        //   firstButton = false;
                        //   secondButton = true;
                        //   thirdButton = false;
                        //   forthButton = false;
                        //   buttonIndex = 1;
                        // });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(options[optionsIndex][1],
                            style: const TextStyle(fontSize: 20)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => firstProvider.thirdButton ? Colors.black : Colors.blue),
                          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {
                        firstProvider.thiRd();
                        // setState(() {
                        //   check = true;
                        //   firstButton = false;
                        //   secondButton = false;
                        //   thirdButton = true;
                        //   forthButton = false;
                        //   buttonIndex = 2;
                        // });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(options[optionsIndex][2],
                            style: const TextStyle(fontSize: 20)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => firstProvider.forthButton ? Colors.black : Colors.blue),
                          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {
                        firstProvider.forTh();
                        // setState(() {
                        //   check = true;
                        //   firstButton = false;
                        //   secondButton = false;
                        //   thirdButton = false;
                        //   forthButton = true;
                        //   buttonIndex = 3;
                        // });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(options[optionsIndex][3],
                            style: const TextStyle(fontSize: 20)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 262),
                child: TextButton(
                  onPressed: () {
                    firstProvider.checker();
                    // setState(() {
                     if(buttonIndex>0){
                       if(buttonIndex - 1 == answers[answersIndex]){ 
                        score = score + 1;
                      }
                      if (questionsIndex < 4) {
                        questionsIndex++;
                        answersIndex++;
                        optionsIndex++;
                      }else{
                        if(score <3 ){
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LooSe()),
                            );
                        }else{
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WinPass()),
                            );
                        }
                      
                          
                          
                      }
                     }
                    // });
                  },
                  child: Container(
                    height: 45,
                    width: 87,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: const Offset(5, 5),
                            blurStyle: BlurStyle.normal,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text('Next'),
                        const Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}


int questionsIndex = 0;
int optionsIndex = 0;
int questionsIndexLength = 5;
int answersIndex = 0;
int score = 0;
int selectedOptions = 0;
int buttonIndex = 0;