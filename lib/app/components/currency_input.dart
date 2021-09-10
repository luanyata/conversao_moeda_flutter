import 'package:flutter/material.dart';

class CurrentInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton<String>(
                iconEnabledColor: Colors.amber,
                iconSize: 30,
                value: 'real',
                isExpanded: true,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
                items: const [
                  DropdownMenuItem<String>(
                    child: Text("Real"),
                    value: 'real',
                  ),
                  DropdownMenuItem<String>(child: Text('Dolar'), value: 'dolar')
                ],
                onChanged: (String? value) {},
              ),
            )),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber))),
            ))
      ],
    );
  }
}
