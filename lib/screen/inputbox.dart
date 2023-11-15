import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class InputBox extends StatelessWidget {
  InputBox({super.key});
  final TextEditingController _textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //자식 위젯의 크기가 고정되지 않은 위젯을 사용할때는 Expanded 또는 Flexible 함수를 사용해야 한다.
          Expanded(
            flex: 4,
              child: TextFormField(
                controller: _textEditingController,
                // maxLines을 null로 지정하면 자동 줄바꿈 할 수 있다.
                maxLines : null,
                decoration: InputDecoration(
                  labelText: 'Input Text',
                  hintText: 'Please input text you want',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)
                  ),

                  suffixIcon: _textEditingController.text.isNotEmpty
                    ? Container(
                    child: IconButton(
                      alignment: Alignment.centerRight,
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        _textEditingController.clear();
                      },
                    ),
                  ) : null
                ),
              ),
          ),

          const SizedBox(width: 5,),

          ElevatedButton(
            onPressed: (){},
            child: const Text('Create numbers'),
          ),

          // TextField(
          //   decoration: InputDecoration(
          //     labelText: '텍스트 입력',
          //   ),
          // ),
        ],
      ),
    );
  }
}
