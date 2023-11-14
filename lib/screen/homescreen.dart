import 'package:flutter/material.dart';
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
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                // const SizedBox(height: 30,),

                Header(), //헤더

                const SizedBox(height: 30,),

                InputBox(), //입력박스 및 버튼

                const SizedBox(height: 30,),

                Make_Answer(),  //생성된 번호

                // Flexible(   //애드몹
                //   flex: 1,
                //   fit: FlexFit.tight,
                //   child:Text('Admob '),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
