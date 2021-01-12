import 'package:flutter/material.dart';

class DeliveryScreen extends StatefulWidget {
  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  void radiochecked(int val) {
    setState(() {
      radioVal = val;
    });
  }

  int radioVal = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(8, 12, 8, 8),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(8, 4, 0, 8),
                    padding: EdgeInsets.fromLTRB(8, 8, 90, 0),
                    color: Colors.purple,
                    child: Text(
                      'ADDRESS DETAILS',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.purple,
                    margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                    padding: EdgeInsets.fromLTRB(8, 4, 0, 8),
                    width: 105,
                    height: 45,
                    child: GestureDetector(
                      child: Text(
                        'CHANGE',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, 'address_book');
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              margin: EdgeInsets.fromLTRB(4, 4, 4, 6),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(80, 5, 80, 5),
                    child: Text(
                      'Youssef Mostafa',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // floating button of add and the name of client
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                      child: Column(
                        children: [
                          Text(
                            'Gamal Abd El-Nasser',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text(
                            'Al Salam City',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text(
                            '+201112367131',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      )), //Text of address
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
              padding: EdgeInsets.fromLTRB(16, 12, 8, 12),
              child: Text(
                'SELECT A DELIVERY METHOD',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              margin: EdgeInsets.fromLTRB(12, 8, 12, 4),
              padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
              child: RadioListTile(
                value: 0,
                groupValue: radioVal,
                onChanged: radiochecked,
                title: Text(
                  'Door Delivery',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  children: [
                    Text('Delivered between 3-5 days',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    Text('Shipping Fee : EGP 25',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
                activeColor: Colors.purple,
                secondary: Icon(Icons.house),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              margin: EdgeInsets.fromLTRB(12, 8, 12, 4),
              padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
              child: RadioListTile(
                value: 1,
                groupValue: radioVal,
                onChanged: radiochecked,
                title: Text('Pickup Station',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                subtitle: Column(
                  children: [
                    Text('Available between 15 Jan - 2 Feb',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    Text('Shipping Fee : EGP 15',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
                activeColor: Colors.purple,
                secondary: Icon(Icons.transfer_within_a_station),
              ),
            ),
          ],
        ),
      ),
    );
  }
}