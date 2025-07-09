import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_color.dart';

InputDecoration inputDecoration(String hintText,String label) {
  return InputDecoration(
    hintText: hintText,
    label: Text(label),
    focusedBorder: borderTextEditing(),
    enabledBorder:borderTextEditing(),
    disabledBorder:borderTextEditing(),
    focusedErrorBorder: borderTextEditing(),
    errorBorder: borderTextEditing(),
    contentPadding: EdgeInsets.only(left: 10, top: 12, right: 10, bottom: 12),
    // padding
    isDense: true,
    // padding
    hintStyle: TextStyle(color: AppColor.gray, fontSize: 14),
  );
}
OutlineInputBorder borderTextEditing(){
  return OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[500]!, width: 0.5),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),);
}


class CurrencyInputFormatter extends TextInputFormatter {
 // final NumberFormat formatter = NumberFormat.currency(locale: 'vi_VN', symbol: '', decimalDigits: 0);
  final NumberFormat formatter = NumberFormat("#,###");
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // 🛑 Nếu rỗng → trả về rỗng (cho phép xóa hết)
    if (newValue.text.trim().isEmpty) {
      return TextEditingValue(
        text: '',
        selection: TextSelection.collapsed(offset: 0),
      );
    }

    // ✅ Lọc số
    String digitsOnly = newValue.text.replaceAll(RegExp(r'[^\d]'), '');
    final number = int.tryParse(digitsOnly);

    if (number == null) {
      return oldValue;
    }

    final newText = formatter.format(number);
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}