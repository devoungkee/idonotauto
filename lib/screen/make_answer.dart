import 'package:flutter/material.dart';
import 'package:idonotauto/const/paint_lotto_no.dart';

class Make_Answer extends StatefulWidget {
  const Make_Answer({super.key});

  @override
  State<Make_Answer> createState() => _Make_AnswerState();
}

class _Make_AnswerState extends State<Make_Answer> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        // alignment: Alignment.topCenter,
        child: ListView(
          children: [
            Dismissible(
              key: ObjectKey(0),
              direction: DismissDirection.endToStart,
              onDismissed: (DismissDirection direction) {
              },
              child: Column(
                children: [
                  Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Paint_LottoNo(number: 26,),
                                  Paint_LottoNo(number: 11,),
                                  Paint_LottoNo(number: 22,),
                                  // Container(
                                  //   width:50.0,
                                  //   height: 50.0,
                                  //   child: Paint_LottoNo(number: 26,)
                                  //   ),
                                ],
                              ),
                              Text('1,2,3,4,5,6'),
                              Text("I don't have a money"),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.delete_sweep,
                              size: 45,
                              color: Colors.lightGreen,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
