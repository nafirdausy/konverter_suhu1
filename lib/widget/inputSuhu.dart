import 'package:flutter/material.dart';

class inputSuhu extends StatelessWidget {
  const inputSuhu({
    Key? key,
    required this.etInput, required this.onPressed,
  }) : super(key: key);

  final TextEditingController etInput;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: etInput,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Celcius',
        hintText: 'Enter the temperature in celcius'
      ),
      onChanged: (value){
        onPressed();
      }
    );
  }
}