import 'package:flutter/services.dart';

class CardNumberSpacesFormat extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if(newValue.selection.baseOffset == 0){
      return newValue;
    }
    String input = newValue.text;
    StringBuffer buffer = StringBuffer();
    
    for(int i= 0;i<input.length;i++){
      buffer.write(input[i]);
      int index = i+1;
      if(index % 4 == 0 && input.length != index){
        buffer.write(" ");
      }
    }
    return TextEditingValue(text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length)
    );
  }
  
}

class CardDateExpiryDateFormat extends TextInputFormatter{

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if(newValue.selection.baseOffset == 0){
      return newValue;
    }
    String input = newValue.text;
    var buffer = new StringBuffer();
    for (int i = 0; i < input.length; i++) {
      buffer.write(input[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != input.length) {
        buffer.write('/');
      }
    }
    return TextEditingValue(text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length)
    );
  }

  static cleanCardNumber(String str){
    RegExp regEx = RegExp(r"[^0-9]");
    return str.replaceAll(regEx, '');
  }

}