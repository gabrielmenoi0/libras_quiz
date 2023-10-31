class Validator {

  static String? validateFullName(String value) {
    if (value.isEmpty) {
      return 'Campo Obrigatório';
    }

    RegExp regex = new RegExp(r"^[A-zÀ-Ÿ][A-zÀ-ÿ']+\s([A-zÀ-ÿ']\s?)*[A-zÀ-Ÿ][A-zÀ-ÿ']+$");

    if (!regex.hasMatch(value.trim()))
      return 'Este campo aceita no minímo dois nomes e iniciar com letras maiúsculas';

    return null;
  }

  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Campo Obrigatório';
    }

    RegExp regex = new RegExp(r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (!regex.hasMatch(value.trim()))
      return 'Formato inválido';

    return null;
  }

  static String? validateSimple(String value) {
    if (value.isEmpty)
      return 'Campo Obrigatório';

    return null;
  }

  static String? validateMonth(String value) {
    final regex = RegExp(r'^([1-9]|1[0-2])$');
    if (value.isEmpty)
      return 'Campo Obrigatório';

    if (!regex.hasMatch(value)) {
      return "Mês inválido!";
    }
    return null;
  }

  // static String? validateDates(String value, CheckoutProvider checkout) {
  //   if (value.isEmpty) {
  //     return 'Campo Obrigatório';
  //   }
  //   // if(checkout.validationDate(value) == false){
  //   //   return "Data inválida!";
  //   // }
  //   return null;
  // }

  static String? validateCep(String value, bool valid) {
    if (value.isEmpty)
      return 'Campo Obrigatório';
    else if(valid==false && value.length >7)
      return "Cep inválido!";
    return null;
  }

  static String? validateDropdown(Object? value) {
    if (value == null)
      return 'Campo Obrigatório';

    return null;
  }

  static String? validateUsername(String value) {
    if (value.isEmpty) {
      return 'Campo Obrigatório';
    }

    RegExp regex = new RegExp(r'^(?=.{2,30}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$');

    if (!regex.hasMatch(value.trim()))
      return 'Usuário deve conter 2 a 30 caracteres, e não deve possuir caracteres especiais';

    return null;
  }

  static String? validatePassword(String password, {int minLength = 6}) {
    if (password.isEmpty) {
      return "Campo obligatorio";
    }

    bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
    bool hasDigits = password.contains(new RegExp(r'[0-9]'));
    bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
    // bool hasSpecialCharacters = password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = password.length >= minLength;

    if(!hasUppercase)
      return "A senha precisa ter pelo menos 1 letra maiúscula";

    if(!hasLowercase)
      return "A senha precisa ter pelo menos 1 letra minúscula";

    if(!hasMinLength)
      return "A senha possuir no minimo $minLength caracteres";

    if(!hasDigits)
      return "A senha precisa ter pelo menos 1 número";

    // if(!hasSpecialCharacters)
    //   return " ";

    return null;
  }

  static String? validatePhone(String value) {

    if (value.isEmpty) {
      return 'Campo obrigatório';
    }

    // RegExp regex = new RegExp(r'^(\([0-9]{2})\)([0-9]{3}|[0-9]{5})-[0-9]{4}$');
    //
    // if (!regex.hasMatch(value.trim()))
    //   return 'Formato de telefone inválido';
    RegExp regex = RegExp(r'^\([1-9]{2}\) (?:[2-8]|9[1-9])[0-9]{3}\-[0-9]{4}$');

    if (!regex.hasMatch(value.trim())) {
      return 'Telefone possui formato inválido';
    }
    return null;
  }

  static String? validatePhoneFixAndMobile(String value) {

    if (value.isEmpty) {
      return 'Campo obrigatório';
    }
    if(value.length < 14){
      return 'Telefone possui formato inválido';
    }
    // bool isValidFixedPhoneNumber(String phoneNumber) {
    //   final RegExp phoneRegex = RegExp(r'^\(\d{2}\) \d{4}-\d{4}$');
    //   return phoneRegex.hasMatch(phoneNumber);
    // }
    //
    // bool isValidMobilePhoneNumber(String phoneNumber) {
    //   final RegExp mobileRegex = RegExp(r'^\(\d{2}\) 9\d{4}-\d{4}$');
    //   return mobileRegex.hasMatch(phoneNumber);
    // }
    //
    // bool isValidPhoneNumber(String phoneNumber) {
    //   return isValidFixedPhoneNumber(phoneNumber) || isValidMobilePhoneNumber(phoneNumber);
    // }
    //
    // if (isValidPhoneNumber(value.trim())) {
    //   return null;
    // } else {
    //   return 'Telefone possui formato inválido';
    // }

  }

  static String? validateCompare(String oldPassword, String newPassword) {

    if (newPassword.isEmpty)
      return 'Campo obrigatório';

    if(oldPassword != newPassword)
      return 'As senhas inseridas precisam ser iguais';

    return null;
  }

  static String? birthdateValidator(String input) {
    if (input.isEmpty) return 'Campo obrigatório';

    String datePattern = "dd/MM/yyyy";

    if (input.length < datePattern.length) return 'Digite uma data válida dd/mm/aaaa';


    RegExp regex = RegExp(r"^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$");


    if (!regex.hasMatch(input))
      return 'Digite uma data válida dd/mm/aaaa';

    return null;
  }

  static String? validateCVV(String value) {
    if (value.isEmpty) {
      return 'Campo obrigatório';
    }

    if (value.length < 3 || value.length > 5) {
      return "CVV is invalid";
    }
    return null;
  }

  static String? validateCardNumber(String value) {
    if (value.isEmpty) {
      return 'Campo obrigatório';
    }

    value = getCleanedNumber(value)!;

    if (value.length < 8) {
      return "Número inválido";
    }

    int sum = 0;
    int length = value.length;
    for (var i = 0; i < length; i++) {
      // get digits in reverse order
      int digit = int.parse(value[length - i - 1]);

      // every 2nd number multiply with 2
      if (i % 2 == 1) {
        digit *= 2;
      }
      sum += digit > 9 ? (digit - 9) : digit;
    }

    if (sum % 10 == 0) {
      return null;
    }

    return "Número inválido";
  }

  static String? getCleanedNumber(String text) {
    RegExp regExp = new RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }


  static int convertYearTo4Digits(int year) {
    if (year < 100 && year >= 0) {
      var now = DateTime.now();
      String currentYear = now.year.toString();
      String prefix = currentYear.substring(0, currentYear.length - 2);
      year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
    }
    return year;
  }
  static bool hasDateExpired(int? month, int? year) {
    return !(month == null || year == null) && isNotExpired(year, month);
  }

  static bool isNotExpired(int year, int month) {
    // It has not expired if both the year and date has not passed
    return !hasYearPassed(year) && !hasMonthPassed(year, month);
  }
  static bool hasMonthPassed(int year, int month) {
    var now = DateTime.now();
    // The month has passed if:
    // 1. The year is in the past. In that case, we just assume that the month
    // has passed
    // 2. Card's month (plus another month) is more than current month.
    return hasYearPassed(year) ||
        convertYearTo4Digits(year) == now.year && (month < now.month + 1);
  }

  static bool hasYearPassed(int year) {
    int fourDigitsYear = convertYearTo4Digits(year);
    var now = DateTime.now();
    // The year has passed if the year we are currently is more than card's
    // year
    return fourDigitsYear < now.year;
  }

  static String? CnpjisValid(String? cnpj) {
    if (cnpj == null) return 'Campo obrigatório';

    var numeros = cnpj.replaceAll(RegExp(r'[^0-9]'), '');

    if (numeros.length != 14) return 'CNPJ inválido';

    if (RegExp(r'^(\d)\1*$').hasMatch(numeros)) return 'CNPJ inválido';

    List<int> digitos = numeros.split('').map((String d) => int.parse(d)).toList();

    // Calcular o primeiro dígito verificador
    var calcDv1 = 0;
    var j = 0;
    for (var i in Iterable<int>.generate(12, (i) => i < 4 ? 5 - i : 13 - i)) {
      calcDv1 += digitos[j++] * i;
    }
    calcDv1 %= 11;
    var dv1 = calcDv1 < 2 ? 0 : 11 - calcDv1;

    if (digitos[12] != dv1) return 'CNPJ inválido';

    var calcDv2 = 0;
    j = 0;
    for (var i in Iterable<int>.generate(13, (i) => i < 5 ? 6 - i : 14 - i)) {
      calcDv2 += digitos[j++] * i;
    }
    calcDv2 %= 11;
    var dv2 = calcDv2 < 2 ? 0 : 11 - calcDv2;

    if (digitos[13] != dv2) return 'CNPJ inválido';

    return null;
  }


}