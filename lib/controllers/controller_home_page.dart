import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String saldo = 'R\$ 873.000,00';
  bool eyesValue = true;

  void showValue() {
    eyesValue = !eyesValue;

    update();
    
  }
}
