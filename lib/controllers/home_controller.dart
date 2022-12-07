import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  double beer269 = 3.71;
  double beer350 = 2.85;
  double beer473 = 2.11;
  double beer600 = 1.66;
  double beer1000 = 1;

  double retorno269 = 0;
  double retorno350 = 0;
  double retorno473 = 0;
  double retorno600 = 0;
  double retorno1000 = 0;

  TextEditingController intputValue269 = TextEditingController();
  TextEditingController intputValue350 = TextEditingController();
  TextEditingController intputValue473 = TextEditingController();
  TextEditingController intputValue600 = TextEditingController();
  TextEditingController intputValue1000 = TextEditingController();

  calculo() {
    double? value269 = double.tryParse(intputValue269.text);
    double? value350 = double.tryParse(intputValue350.text);
    double? value473 = double.tryParse(intputValue473.text);
    double? value600 = double.tryParse(intputValue600.text);
    double? value1000 = double.tryParse(intputValue1000.text);
    retorno269 = value269! * beer269;
    retorno350 = value350! * beer350;
    retorno473 = value473! * beer473;
    retorno600 = value600! * beer600;
    retorno1000 = value1000! * beer1000;
    if (retorno269 < retorno350 &&
        retorno269 < retorno473 &&
        retorno269 < retorno600 &&
        retorno269 < retorno1000) {
      return '269 mais barato';
    } else if (retorno350 < retorno269 &&
        retorno350 < retorno473 &&
        retorno350 < retorno600 &&
        retorno350 < retorno1000) {
      return '350 mais barato';
    } else if (retorno473 < retorno269 &&
        retorno473 < retorno350 &&
        retorno473 < retorno600 &&
        retorno473 < retorno1000) {
      return '473 mais barato';
    } else if (retorno600 < retorno269 &&
        retorno600 < retorno350 &&
        retorno600 < retorno473 &&
        retorno600 < retorno1000) {
      return '600 mais barato';
    } else {
      return '1000 mais barato';
    }
  }
}
