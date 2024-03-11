import 'package:flutter/material.dart';
import 'package:unipool/pages/booking/prebookingpage2.dart';
import 'package:unipool/pages/booking/prebookingpage3.dart';

import '../../screens/navigation_bar.dart';


class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _peopleController = TextEditingController();
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  DateTime _dateVariable = DateTime.now();
  TimeOfDay _timeVariable = TimeOfDay.now();
  final TextEditingController _timeController = TextEditingController();

  void _showDatePicker() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _dateVariable,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (pickedDate != null && pickedDate != _dateVariable) {
      setState(() {
        _dateVariable = pickedDate;
        _dateController.text =
        "${_dateVariable.day}/${_dateVariable.month}/${_dateVariable.year}";
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _peopleController.dispose();
    _fromController.dispose();
    _toController.dispose();
    _dateController.dispose();
    _timeController.dispose();
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
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contact Number',
                  prefixIcon: Icon(Icons.phone),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your contact number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _peopleController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number of People',
                  prefixIcon: Icon(Icons.group),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of people';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField(
                      value: 'Vijayawada Railway Station',
                      items: [
                        DropdownMenuItem(
                          value: 'Vijayawada Railway Station',
                          child: Text(
                            'Vijayawada Railway Station',
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Guntur Railway Station',
                          child: Text('Guntur Railway Station'),
                        ),
                        DropdownMenuItem(
                          value: 'Mangalagiri Railway Station',
                          child: Text('Mangalagiri Railway Station'),
                        ),
                        DropdownMenuItem(
                          value: 'SRM University',
                          child: Text('SRM University'),
                        ),
                        DropdownMenuItem(
                          value: 'PVP',
                          child: Text('PVP'),
                        ),
                        DropdownMenuItem(
                          value: 'Benz Circle',
                          child: Text('Benz Circle'),
                        ),
                        DropdownMenuItem(
                          value: 'Others',
                          child: Text('Others'),
                        ),
                      ],
                      isExpanded: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'From',
                        prefixIcon: Icon(Icons.location_on),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _fromController.text = value as String;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select the from location';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: DropdownButtonFormField(
                      value: 'Vijayawada Railway Station',
                      items: [
                        DropdownMenuItem(
                          value: 'Vijayawada Railway Station',
                          child: Text('Vijayawada Railway Station'),
                        ),
                        DropdownMenuItem(
                          value: 'Guntur Railway Station',
                          child: Text('Guntur Railway Station'),
                        ),
                        DropdownMenuItem(
                          value: 'Mangalagiri Railway Station',
                          child: Text('Mangalagiri Railway Station'),
                        ),
                        DropdownMenuItem(
                          value: 'SRM University',
                          child: Text('SRM University'),
                        ),
                        DropdownMenuItem(
                          value: 'PVP',
                          child: Text('PVP'),
                        ),
                        DropdownMenuItem(
                          value: 'Benz Circle',
                          child: Text('Benz Circle'),
                        ),
                        DropdownMenuItem(
                          value: 'Others',
                          child: Text('Others'),
                        ),
                      ],
                      isExpanded: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'To',
                        prefixIcon: Icon(Icons.location_on),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _toController.text = value as String;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select the to location';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _dateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Date (dd-mm-yy)',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () async {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2030),
                            ).then((value) {
                              setState(() {
                                _dateVariable = DateTime(
                                    value!.year, value.month, value.day);
                                _dateController.text =
                                    _dateVariable.day.toString() +
                                        "/" +
                                        _dateVariable.month.toString() +
                                        "/" +
                                        _dateVariable.year.toString();
                              });
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the date';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      controller: _timeController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Time Slot',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.access_time),
                          onPressed: () async {
                            showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            ).then((value) {
                              setState(() {
                                _timeVariable = value ?? TimeOfDay.now();
                                _timeController.text =
                                    _timeVariable.format(context).toString();
                              });
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the time';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.yellow.shade800,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (_fromController.text == 'Others' ||
                        _toController.text == 'Others') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationPage(
                            name: _nameController.text,
                            email: _emailController.text,
                            phone: _phoneController.text,
                            people: _peopleController.text,
                            from: _fromController.text,
                            to: _toController.text,
                            date: _dateController.text,
                            time: _timeController.text,
                          ),
                        ),
                      );
                    } else {
                     // BookARide();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SuccessPage(),
                        ),
                      );
                    }
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  /*void BookARide() async {
    BookingModel b1 = BookingModel(
        name: _nameController.text.trim(),
        emialId: _emailController.text.trim(),
        contactNo: _phoneController.text.trim(),
        no_of_people: int.parse(_peopleController.text),
        from_address: _fromController.text.trim(),
        to_address: _toController.text.trim(),
        date: _dateVariable,
        time: _timeVariable.format(context).toString());
    await FirebaseFirestore.instance.collection("Bookings").add(b1.toJson());
  }*/
}