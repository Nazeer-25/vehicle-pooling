import 'package:flutter/material.dart';
import '../../screens/Side_navbar.dart';
import '../../screens/navigation_bar.dart';

class HomeContent extends StatelessWidget {
  final List<IconData> iconDataList = [
    Icons.restaurant,
    Icons.directions_car,
    Icons.local_gas_station,
    Icons.shopping_cart,
  ];

  @override
  Widget build(BuildContext context) {
    // Your Home content here
    return Scaffold(
      drawer: SideNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Spacer(), // Adds space between the two icons
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              // Wrap the container with an InkWell widget
              onTap: () {
                // Navigate to the blank page when the container is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BlankPage()),
                );
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "unipool",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("have a great ride"),
              SizedBox(height: 30),
              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var index = 0; index < iconDataList.length; index++)
                      InkWell(
                        // Wrap the container with an InkWell widget
                        onTap: () {
                          // Navigate to the blank page when the container is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BlankPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Colors.black12),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              iconDataList[index],
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: iconDataList.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: InkWell(
                            // Wrap the padding with an InkWell widget
                            onTap: () {
                              // Navigate to the blank page when the padding is tapped
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BlankPage()),
                              );
                            },
                            child: Padding(
                              // The padding that contains the column with the text and icons
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Small Item", // Placeholder text
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$20", // Placeholder for cost
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star_border, // Replace with your desired icon
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

// The class that defines the blank page
class BlankPage extends StatelessWidget {
  const BlankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blank Page'),
      ),
      body: const Center(
        child: Text('This is a blank page'),
      ),
    );
  }
}
