import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailsPopup extends StatefulWidget {
  @override
  _DetailsPopupState createState() => _DetailsPopupState();
}

class _DetailsPopupState extends State<DetailsPopup> {
  TextEditingController fatController = TextEditingController();
  TextEditingController proteinController = TextEditingController();
  TextEditingController caloriesController = TextEditingController();
  DateTime insertingDate = DateTime.now();
  DateTime? expiryDate;
  TextEditingController stock=TextEditingController();

  Future<void> _selectExpiryDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        expiryDate = picked;
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        insertingDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Details"),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: fatController,
              decoration: InputDecoration(labelText: 'Fat'),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: proteinController,
              decoration: InputDecoration(labelText: 'Protein'),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: caloriesController,
              decoration: InputDecoration(labelText: 'Calories'),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: stock,
              decoration: InputDecoration(labelText: 'Stocks'),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    _selectDate(context);
                  },
                  child: Text('Inserted Date'),
                ),
                SizedBox(width: 10),
                Text('${insertingDate != null ? DateFormat('yyyy-MM-dd').format(insertingDate!) : 'Select inserting Date'}'),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    _selectExpiryDate(context);
                  },
                  child: Text('Expiry Date    '),
                ),
                SizedBox(width: 10),
                Text('${expiryDate != null ? DateFormat('yyyy-MM-dd').format(expiryDate!) : 'Select Expiry Date'}'),
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            // Do something with the entered details
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}