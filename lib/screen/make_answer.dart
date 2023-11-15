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
      child: ListView(
        children: [
          Dismissible(
            key: ObjectKey(0),
            direction: DismissDirection.endToStart,
            onDismissed: (DismissDirection direction) {
            },
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.lightGreen ,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.brown,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Paint_LottoNo(number: 2,),
                                SizedBox(width: 5,),
                                Paint_LottoNo(number: 14,),
                                SizedBox(width: 5,),
                                Paint_LottoNo(number: 22,),
                                SizedBox(width: 5,),
                                Paint_LottoNo(number: 32,),
                                SizedBox(width: 5,),
                                Paint_LottoNo(number: 42,),
                                SizedBox(width: 5,),
                                Paint_LottoNo(number: 44,),
                              ],
                            ),
                          ),

                          SizedBox(height: 10),

                          Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.lightGreen,
                            child: Text("I don't  a money",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              overflow: TextOverflow.clip,

                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      color: Colors.orange,
                      alignment: Alignment.center,
                      // alignment: Alignment.centerRight,
                      child: Icon(Icons.delete_sweep,
                        size: 45,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
        ],
      ),
    );
  }
}
