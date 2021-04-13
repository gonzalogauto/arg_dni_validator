import 'package:flutter_test/flutter_test.dart';

import 'package:arg_dni_validator/arg_dni_validator.dart';

void main() {
  test('validate DNI', () {
    final dnivalidator = DniValidator();
    expect(dnivalidator.isValidDNI('38069341'), true);
    expect(dnivalidator.isValidDNI('380693414'), false);
    expect(dnivalidator.isValidDNI('3806931'), false);
  });
}
