import 'package:flutter/material.dart';
import 'package:idonotauto/const/wgseo_module.dart';
import 'package:idonotauto/screen/admob.dart';
import 'package:idonotauto/screen/header.dart';
import 'package:idonotauto/screen/input_answer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> tempListNum = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('I do not auto lotto.'),
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                //화면 분할
                flex: 3, //3 비율
                child: Container(
                    //구역을 구분하기 위해 명시
                    color: Colors.lightGreen, //구분된 구역을 명확하게 확인하기 위해 색상표시(추후 주석)
                    child: Header()),
              ),

              wgseo_Sized_Heigh(),

              Flexible(
                flex: 35,
                child: Container(
                  color: Colors.yellow,
                  child: Input_Answer(),
                ),
              ),

              // Flexible(
              //   flex: 5,
              //   child: Container(
              //       color: Colors.yellow,
              //     child: InputBox(),
              //   ),
              // ),
              //
              // wgseo_Sized_Heigh(),
              //
              // Flexible(
              //   flex: 30,
              //   child: Container(
              //     color: Colors.blue,
              //     child: Make_Answer(),
              //   ),
              // ),

              wgseo_Sized_Heigh(),

              Container(
                color: Colors.pinkAccent,
                child: Admob(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
