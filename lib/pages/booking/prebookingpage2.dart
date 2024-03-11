
import 'package:flutter/material.dart';
import 'package:unipool/pages/booking/prebookingpage3.dart';

class LocationPage extends StatefulWidget {
  final String name;
  final String email;
  final String phone;
  final String people;
  final String from;
  final String to;
  final String date;
  final String time;

  const LocationPage({
    Key? key,
    required this.name,
    required this.email,
    required this.phone,
    required this.people,
    required this.from,
    required this.to,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final _formKey = GlobalKey<FormState>();
  final _fromController = TextEditingController();
  final _toController = TextEditingController();

  @override
  void dispose() {
    _fromController.dispose();
    _toController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unipool Booking App'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              if (widget.from == 'Others')
                TextFormField(
                  controller: _fromController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'From',
                    prefixIcon: Icon(Icons.location_on),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the from location';
                    }
                    return null;
                  },
                ),
              if (widget.from == 'Others') SizedBox(height: 16.0),
              if (widget.to == 'Others')
                TextFormField(
                  controller: _toController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'To',
                    prefixIcon: Icon(Icons.location_on),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the to location';
                    }
                    return null;
                  },
                ),
              if (widget.to == 'Others') SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.yellow.shade800,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessPage(),
                      ),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
