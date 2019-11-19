
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:day_33_morning_challenge_curve/main.dart';
//change for test commit by kapil
void main() {
  Curve myCurve = Curves.ease;
  print(myCurve.transform(0.5));
  test("Testing curve value", (){
    expect(5+2, 7);
  });

  //----------------------
  //testing custom curve values
  test("Testing Custom curve values", (){
    expect(CustomCurve().transformInternal(0), 0);
    expect(CustomCurve().transformInternal(0.2), 0);
    expect(CustomCurve().transformInternal(0.3), Curves.ease.transformInternal(0.5));
    expect(CustomCurve().transformInternal(0.4), 1.0);
    expect(CustomCurve().transformInternal(0.5),  Curves.decelerate.transformInternal(0.5));
  });
}
