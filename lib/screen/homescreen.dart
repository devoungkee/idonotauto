import 'package:flutter/material.dart';
import 'package:idonotauto/screen/admob.dart';
import 'package:idonotauto/screen/header.dart';
import 'package:idonotauto/screen/inputbox.dart';
import 'package:idonotauto/screen/make_answer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('I do not auto lotto.'),
      ),
      body: Center(
        child: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20,20,20,20) ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(   //화면 분할
                  flex: 3,  //3 비율
                  child: Container(   //구역을 구분하기 위해 명시
                    color: Colors.lightGreen,   //구분된 구역을 명확하게 확인하기 위해 색상표시(추후 주석)
                      child: const Align(     //구역의 정렬
                          alignment: Alignment.center,  //Container 의 중간.
                          child: Header()     //화면 불러오기.
                      )
                  ),
                ),

                const SizedBox(height: 10,),    //구역의 분기 지정.

                Flexible(
                  flex: 5,
                  child: Container(
                      color: Colors.yellow,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: InputBox()
                    ),
                  ),
                ),

                const SizedBox(height: 10,),

                Flexible(
                  flex: 30,
                  child: Container(
                    color: Colors.blue,
                    child: const Align(
                        alignment: Alignment.topCenter,
                        child: Make_Answer(),
                    ),
                  ),
                ),

                const SizedBox(height: 10,),

                Container(
                  color: Colors.pinkAccent,
                  child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: Admob()
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
