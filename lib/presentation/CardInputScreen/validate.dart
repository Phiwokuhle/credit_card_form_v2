class ValidateCard {
  static bool isCardExpired(int month, int year) {
    final DateTime presentDate = DateTime.now();
    return _getYear(year) >= presentDate.year || month > presentDate.month;
  }

  static _getYear(int year) {
    if (year < 100 && year >= 0) {
      var now = DateTime.now();
      String currentYear = now.year.toString();
      String prefix = currentYear.substring(0, currentYear.length - 2);
      year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
    }
    return year;
  }

  static String? validateCardNum(String? input) {
    if (input == null || input.isEmpty) {
      return "This field is required";
    }
    input = getCleanedNumber(input);
    if (input.length < 16) {
      return "Please enter a valid card number ";
    }
    return null;
  }

  static String? validateIssuingCountry(String? input) {
    if (input == null || input.isEmpty) {
      return "Please select issuing country";
    }
    return null;
  }

  static String? validateName(String? input) {
    input = input?.trim();

    if (input == null || input.isEmpty) {
      return "This field is required";
    }
    RegExp regex = RegExp(r'^[a-zA-Z ]+$');
    if (!regex.hasMatch(input)) {
      return "Invalid name";
    }

    List<String> nameParts = input.split(' ');
    if (nameParts.length < 2) {
      return "Please enter your first name and last name";
    }

    return null;
  }

  static String? validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is required";
    }
    if (value.length < 3 || value.length > 4) {
      return "CVV is invalid";
    }
    return null;
  }

  static String getCleanedNumber(String text) {
    RegExp regExp = RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }

  static String? validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is required";
    }
    int year;
    int month;
    if (value.contains(RegExp(r'(/)'))) {
      var split = value.split(RegExp(r'(/)'));

      month = int.parse(split[0]);
      year = int.parse(split[1]);
    } else {
      month = int.parse(value.substring(0, (value.length)));
      year = -1;
    }
    if ((month < 1) || (month > 12)) {
      return 'Expiry month is invalid';
    }
    var fourDigitsYear = _getYear(year);
    if ((fourDigitsYear < 1) || (fourDigitsYear > 2099)) {
      return 'Expiry year is invalid';
    }
    if (!isCardExpired(month, year)) {
      return "Card has expired";
    }
    return null;
  }
}
