
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
  //will add more test cases later.
  test("Testing Custom curve values", (){
    CustomCurve curve = CustomCurve();
    expect(curve.transformInternal(0), 0.0);
    expect(curve.transformInternal(0.1), 0.0);
    expect(curve.transformInternal(0.2), 0.0);
    expect(curve.transformInternal(0.3), Curves.ease.transform(0.5));
    expect(curve.transformInternal(0.35), Curves.ease.transform(0.75));
    expect(curve.transformInternal(0.4), 1.0);
    expect(curve.transformInternal(0.45),  Curves.decelerate.transform(0.75));
    expect(curve.transformInternal(0.5),  Curves.decelerate.transform(0.5));
    expect(curve.transformInternal(0.6), 0.0);
    expect(curve.transformInternal(0.7), 0.0);
    expect(curve.transformInternal(0.8), 0.0);
    expect(curve.transformInternal(0.9), 0.0);
    expect(curve.transformInternal(1.0), 0.0);
  });
}
