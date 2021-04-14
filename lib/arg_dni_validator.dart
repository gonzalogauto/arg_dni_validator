library arg_dni_validator;

class ArgValidator {
  final String _dnivalidator = r"^\d{8}(?:[-\s]\d{4})?$";
  final String _cuitExp = r'\b(20|23|24|27|30|33|34)(-)?[0-9]{8}(-)?[0-9]';

  /// Validates DNI.
  ///
  /// Returns false if DNI is invalid.
  /// Returns true if DNI is valid.
  bool isValidDNI(String dni) {
    if (RegExp(_dnivalidator, caseSensitive: true, multiLine: true)
        .hasMatch(dni)) {
      return true;
    }
    return false;
  }

  /// Validates CUIT.
  ///
  /// Returns false if CUIT is invalid.
  /// Returns true if CUIT is valid.
  bool isValidCUIT(String text) {
    if (RegExp(_cuitExp).hasMatch(text)) {
      return true;
    } else {
      return false;
    }
  }
}
