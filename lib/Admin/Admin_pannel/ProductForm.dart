
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DetailsPopup.dart';
import 'details_model.dart';

class ProductForm extends StatefulWidget {
  final int id;
  final List<Product> productDetails;

  ProductForm(this.id, this.productDetails);

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  void _showDetailsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DetailsPopup();
      },
    );
  }


  void remove(){
    widget.productDetails.removeAt(widget.id);
  }
  @override
  Widget build(BuildContext context) {
    int id_ = widget.id;
    Product product = widget.productDetails[id_];




    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                product.productId,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                product.productName,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildQuantityOption(product.quantity1),
                  buildQuantityOption(product.quantity2),
                  buildQuantityOption(product.quantity3),
                ],
              ),
              Column(
                children: [
                  buildQuantityOption(product.price1),
                  buildQuantityOption(product.price2),
                  buildQuantityOption(product.price3),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Enable"),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.green),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Disable"),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.red),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _showDetailsDialog(context);
                },
                child: Text("Details"),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.grey),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {


                  });
                },
                icon: Icon(
                  Icons.remove_circle,
                  size: 30,
                  color: Colors.red,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildQuantityOption(String quantity) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          quantity,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}