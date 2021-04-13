library arg_dni_validator;

class DniValidator {
  bool isValidDNI(String dni) {
    final String dnivalidator = r"^\d{8}(?:[-\s]\d{4})?$";
    if (RegExp(dnivalidator, caseSensitive: true, multiLine: true)
        .hasMatch(dni)) {
      return true;
    }
    return false;
  }
}
