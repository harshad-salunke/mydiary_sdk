import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'details_model.dart';

class DetailsPopup extends StatefulWidget {
  Product product;
  Function(Product) callback;
  DetailsPopup(this.product,this.callback);
  @override
  _DetailsPopupState createState() => _DetailsPopupState();
}

class _DetailsPopupState extends State<DetailsPopup> {
  TextEditingController fatController = TextEditingController();
  TextEditingController proteinController = TextEditingController();
  TextEditingController caloriesController = TextEditingController();
  DateTime? insertingDate;
  DateTime? expiryDate;
  TextEditingController stock=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatController.text=widget.product.fat.toString();
    proteinController.text=widget.product.protein.toString();
    caloriesController.text=widget.product.calories.toString();
    stock.text=widget.product.stock.toString();


  }


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
        String expiryDateStr=DateFormat('yyyy-MM-dd').format(expiryDate!);
        widget.product.expiryDate=expiryDateStr;
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
        String insertingDateStr=DateFormat('yyyy-MM-dd').format(insertingDate!);
        widget.product.insertionDate=insertingDateStr;
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
                Text('${insertingDate != null ? DateFormat('yyyy-MM-dd').format(insertingDate!) : '${widget.product.insertionDate}'}'),
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
                Text('${expiryDate != null ? DateFormat('yyyy-MM-dd').format(expiryDate!) : '${widget.product.expiryDate}'}'),
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            // Do something with the entered details
            widget.product.fat=double.parse(fatController.text);
            widget.product.protein=int.parse(proteinController.text);
            widget.product.calories=int.parse(caloriesController.text);
            widget.product.stock=int.parse(stock.text);

            widget.callback(widget.product);
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}