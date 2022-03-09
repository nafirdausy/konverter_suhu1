import 'package:flutter/material.dart';

class targetPerhitungan extends StatelessWidget {
  const targetPerhitungan({
    Key? key,
    required this.selectedDropDown, required this.listSatuanSuhu, 
    required this.onDropdownChanged, required this.onPressed,
  }) : super(key: key);

  final String selectedDropDown;
  final List<String> listSatuanSuhu;
  final Function onDropdownChanged;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      isExpanded: true,
      value: selectedDropDown, 
      items: listSatuanSuhu.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
          );
      }).toList(),
      onChanged: (value){
        onDropdownChanged(value);
        onPressed();
      }
    );
  }
}