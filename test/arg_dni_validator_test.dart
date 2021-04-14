import 'package:flutter_test/flutter_test.dart';

import 'package:arg_dni_validator/arg_dni_validator.dart';

void main() {
  ArgValidator dnivalidator = ArgValidator();
  test('validate DNI', () {    
    expect(dnivalidator.isValidDNI('38069341'), true);
    expect(dnivalidator.isValidDNI('380693414'), false);
    expect(dnivalidator.isValidDNI('3806931'), false);
  });
  test('validate CUIT', () {
    expect(dnivalidator.isValidCUIT('20380693411'), true);
    expect(dnivalidator.isValidCUIT('29380693411'), false);
    expect(dnivalidator.isValidCUIT('20-38069341-1'), true);
  });
}
