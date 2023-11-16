import 'package:flutter/material.dart';
import 'package:idonotauto/const/paint_lotto_no.dart';

class Input_Answer extends StatefulWidget {
  const Input_Answer({super.key});

  @override
  State<Input_Answer> createState() => _Input_AnswerState();
}

class _Input_AnswerState extends State<Input_Answer> {
  final TextEditingController _textEditingController = new TextEditingController();
  // 텍스트 박스의 문자를 입력 받을 변수.
  String tempChar = '';
  // 입력된 텍스트를 숫자로 변환하여 다시 전달받을 변수
  String ascValue = '';
  // 입력된 텍스트를 숫자로 변환하기 위한 변수.
  double sumAscValue = 0;
  // 텍스트 입력 박스 컨트롤러
  final _inputChar = TextEditingController();
  // 임의의 6개 숫자 저장 리스트 변수.
  List<int> selNums = List<int>.filled(6, 0);

  @override
  void dispose() {
    //위젯 트리에서 해제한다.
    _inputChar.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // _clearScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 5,
          child: Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //자식 위젯의 크기가 고정되지 않은 위젯을 사용할때는 Expanded 또는 Flexible 함수를 사용해야 한다.
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      controller: _textEditingController,
                      // maxLines을 null로 지정하면 자동 줄바꿈 할 수 있다.
                      maxLines: null,
                      decoration: InputDecoration(
                          labelText: 'Input Text',
                          hintText: 'Please input text you want',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          suffixIcon: _textEditingController.text.isNotEmpty
                              ? Container(
                                  child: IconButton(
                                    alignment: Alignment.centerRight,
                                    icon: Icon(Icons.cancel),
                                    onPressed: () {
                                      _textEditingController.clear();
                                    },
                                  ),
                                )
                              : null),
                    ),
                  ),

                  const SizedBox(
                    width: 5,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        tempChar = _textEditingController.text.replaceAll(' ','');
                        if(tempChar != '') {
                          _calAscii();
                          print('${selNums}완료');
                        }
                        // _textEditingController
                      });
                    },
                    child: const Text('Create numbers'),
                  ),

                  // TextField(
                  //   decoration: InputDecoration(
                  //     labelText: '텍스트 입력',
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          flex: 30,
          child: Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: ListView(
                children: [
                  Dismissible(
                    key: ObjectKey(0),
                    direction: DismissDirection.endToStart,
                    onDismissed: (DismissDirection direction) {},
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 9,
                                child: Container(
                                  // color: Colors.lightGreen ,
                                  child: Column(
                                    children: [
                                      Container(
                                        color: Colors.brown,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Paint_LottoNo(number: selNums[0].toInt(),),
                                            SizedBox(width: 5,),
                                            Paint_LottoNo(number: selNums[1].toInt(),),
                                            SizedBox(width: 5,),
                                            Paint_LottoNo(number: selNums[2].toInt(),),
                                            SizedBox(width: 5,),
                                            Paint_LottoNo(number: selNums[3].toInt(),),
                                            SizedBox(width: 5,),
                                            Paint_LottoNo(number: selNums[4].toInt(),),
                                            SizedBox(width: 5,),
                                            Paint_LottoNo(number: selNums[5].toInt(),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          color: Colors.yellow,
                                          child: Text(
                                            _textEditingController.text.toString(),
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.orange,
                                  child: Icon(
                                    Icons.delete_sweep,
                                    size: 45,
                                    color: Colors.lightGreen,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  _calAscii() {
    ascValue = '';
    // ascii 코드의 합산을 저장할 double 변수.
    sumAscValue = 1;
    tempChar = tempChar.replaceAll(' ', '');

    print (tempChar.toString());

    for (int i = 0; i < tempChar.length; i++) {
      // codeUnitAt(위치) 특정 문자의 위치를 유니코드로 반환.
      //[@2022-08-08] 가나다, 다나가, 다가나 의 순서와 상관없이 동일한 값이 표현됨. 수정이 필요함.
      sumAscValue = (sumAscValue *
          //문자의 순서와 동일한 값이 표현되므로 자릿수에 따른 변수를 추가로 곱한다.
          tempChar.codeUnitAt(i) *
          // 원주율
          3.14159265358979) /
          // 임의숫자
          1228;
      //[@2022-12-07]
      if (i % 2 == 0) {
        // 곱하기만 하는 경우 문자의 순서와 상관없이 동일한 결과 값이 나오므로 홀수,짝수에 따라 변수를 적용하여 순서에 따라 결과가 다르게 계산한다.
        sumAscValue = sumAscValue + 1228;
      } else {
        sumAscValue = sumAscValue - 1228;
      }
    }

    // 임의 계산된 숫자에서 랜덤 숫자를 생성할때 불필요한 문자는 제거한다.
    ascValue = ((sumAscValue.toString().replaceAll('.', ''))
        .replaceAll('e', '')
        .replaceAll('+', '')
        .replaceAll('-', '')
        .replaceAll(' ', '')
        .replaceAll('0', ''));

    // 리스트 초기화.
    for (int i = 0; i < 6; i++) {
      selNums[i] = 0;
    }

    print(selNums);

    for (int i = 0; i < 6; i++) {
      //두 문자씩 끊어 리스트에 저장.
      int temp = int.parse(ascValue.substring((i * 2) + 0, (i * 2) + 2));

      if (temp > 45) {
        if (temp > 90) {
          // 45를 초과 90 초과 하는 경우 -90
          temp = temp - 90;
        } else {
          // 45를 초과 90 미만의 경우 - 14
          temp = temp - 45;
        }
      }

      // 위에 생성된 숫자가 리스트 변수에 존재하는 경우 무한 반복하여 중복되는 값이 없도록 변수에 +1을 더한다.
      while (selNums.contains(temp)) {
        // +1 한 값이 45를 초과 하는 경우
        if (temp + 1 > 45) {
          // 변수 초기화
          temp = 1;
        } else {
          // 변수 + 1
          temp = temp + 1;
        }
      }
      // 리스트변수에 중복된 값이 없으면 값 등록.
      selNums[i] = temp;
    }
    //리스트를 오름 차순으로 정렬한다.
    selNums.sort();

    print(selNums);

  }
}
