import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);

  // 인스턴스 생성
  final CountCotrollerWithGetx _cotrollerWithGetx = Get.put(CountCotrollerWithGetx());

  /**
   * provider의 경우, context를 가져와야 하지만 Getx 의 경우 필요가 없다.
   * 무슨 장점이 있을까?
   * context 필요없이 자유롭기 때문에,
   * 함수 형태로 따로 빼서 작성할수 있기때문에 구분화 하기에 더 좋다.
   * provider에서는 불가능. statefull로 바꿔주거나 context를 전달해줘야함.
   */
  Widget _button() {
    return RaisedButton(
        child: Text("+", style: TextStyle(fontSize: 30),),
        onPressed: () {
          _cotrollerWithGetx.increase();
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Getx", style: TextStyle(fontSize: 30),),
          GetBuilder<CountCotrollerWithGetx>(
            // id: "first",  // id 를 부여한 순간 부터 이것과 연결된것만 영향을 주거나 받을수있다.
            builder: (controller) {
              /** 단순상태관리의 경우,
               * 5로 설정하고 나서
               * 5로 변경 버튼을 누르면
               * 계속 update가 찍힘 [굳이 UI 변경이 일어날 필요가 없는데. = 불필요 함.]
               */
              print("단순 update!!!");
              return Text("${controller.count}", style: TextStyle(fontSize: 50),);
          }),
          // GetBuilder<CountCotrollerWithGetx>(
          //     // id: "second",
          //     builder: (controller) {
          //       return Text("${controller.count}", style: TextStyle(fontSize: 50),);
          // }),
          // _button("first"),
          // _button("second"),
          _button(),
          RaisedButton(
            child: Text("5로 변경", style: TextStyle(fontSize: 30),),
            onPressed: () {
              _cotrollerWithGetx.putNumber(5);
          }),
        ],
      ),
    );
  }
}
