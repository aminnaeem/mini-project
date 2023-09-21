import 'package:flutter/material.dart';

List deliveryTime = ['1 Hour', '2 Hour', '3 Hour'];
List addressList = ['Select Address','Green Way 3000, Sylhet', 'Add More'];

class DDMenu extends StatefulWidget {
  final List dropDownList;

  const DDMenu({super.key, required this.dropDownList});

  @override
  State<DDMenu> createState() => _DDMenuState();
}

class _DDMenuState extends State<DDMenu> {
  late String dropdownMenu;

  @override
  void initState() {
    dropdownMenu = widget.dropDownList.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownMenu,
      items: widget.dropDownList.map<DropdownMenuItem<String>>((value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
        }).toList(),
        onChanged: ((newValue) {
          setState(() {
            dropdownMenu = newValue!;
          });
        }
      ),
      underline: null,
    );
  }
}