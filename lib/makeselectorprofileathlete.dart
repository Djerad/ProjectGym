import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class selectorprofile extends StatefulWidget {
  const selectorprofile({super.key});

  @override
  State<selectorprofile> createState() => _selectorprofileState();
}

class _selectorprofileState extends State<selectorprofile> {
  final List<String> items = ['New Athlete', 'Old Athlete  ', 'Fidele Athlete'];
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            hint: Text(
              'Type Athlete',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          color: Color(0xFFFF1E0F),
                          fontSize: 18,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
            buttonStyleData: ButtonStyleData(
              decoration: BoxDecoration(
                  color: Color(0xFFFF1E0F),
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              width: 180,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 50,
            ),
          ),
        ),
      ),
    );
    ;
  }
}
