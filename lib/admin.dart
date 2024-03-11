import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AdminPage2 extends StatefulWidget {
  @override
  _AdminPage2State createState() => _AdminPage2State();
}

class _AdminPage2State extends State<AdminPage2> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> _getPendingUsers() {
    return FirebaseFirestore.instance
        .collection('Users')
    // .where('status', isEqualTo: 'pending')
        .snapshots();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Acess Page'),
        ),
        body: StreamBuilder(
          stream: _getPendingUsers(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }

            // Extract user data from the snapshot
            List<DocumentSnapshot> pendingUsers = snapshot.data!.docs;

            return ListView.builder(
              itemCount: pendingUsers.length,
              itemBuilder: (BuildContext context, int index) {
                var userData =
                pendingUsers[index].data() as Map<String, dynamic>;
                var email = userData['Email'];
                var username = userData['User Name'];
                var docId = pendingUsers[index].id;

                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    title: Text(' $email, Role: $username'),
                    subtitle: Text('Status: pending'),
                    // Add buttons to update status
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // _updateStatus(docId, 'approved');
                          },
                          child: Icon(Icons.check, color: Colors.white),
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {
                            // _updateStatus(docId, 'disapproved');
                          },
                          child: Icon(Icons.close, color: Colors.white),
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}