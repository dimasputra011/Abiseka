import 'package:flutter/material.dart';

void visitbottomsheet(BuildContext context) {
  double witdh = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height - 350;
  showBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    elevation: 10,
    constraints: BoxConstraints(minHeight: height),
    builder: (context) {
      return Container(
        height: height,
        width: witdh,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black26, offset: Offset(-1, -1), blurRadius: 10),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Text("Visit Items"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nama Ite m',
              ),
            ),
          ],
        ),
      );
    },
  );
}
