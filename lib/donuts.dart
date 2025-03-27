import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
   Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: GradientScreen(),
    );
  }
}

class GradientScreen extends StatefulWidget {
  @override
  _GradientScreenState createState() => _GradientScreenState();
}

class _GradientScreenState extends State<GradientScreen> {
  int itemCount = 0; 

  void _addItem() {
    setState(() {
      itemCount++;
    });
  }
  void _removeItem() {
    setState(() {
      if (itemCount > 0) itemCount--;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 230, 92, 248),
              const Color.fromARGB(255, 241, 145, 245),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 80), 
            const Text(
              "HOW TO BURN OFF",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 30), 
            Expanded(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 25),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQhoX8zmEVXSZhNawIUrzQNrCU3y2u5-w31g&s",
                        width: 70, 
                        height: 70,
                      ),
                      const SizedBox(height: 20), 
                      const Text(
                        "Donuts",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10), 
                      const Text(
                        "° Straberry Frosted  °",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                       const SizedBox(
                        height: 10,
                      ), 

                       Stack(
                    alignment: Alignment.center, 
                    children: [
                      const Divider(
                        thickness: 2,
                        color:  Color.fromARGB(255, 241, 145, 245), 
                      ),
                      Align(
                        alignment: Alignment.center, 
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [ const Color.fromARGB(255, 230, 92, 248),
                                        const Color.fromARGB(255, 241, 145, 245)],
                            ),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                spreadRadius: 2,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Text(
                            "540 kcal",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40), 
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove, color: Colors.red, size: 30),
                              onPressed: _removeItem,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "$itemCount",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.add, color: Colors.green, size: 30),
                              onPressed: _addItem,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                     
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildIconWithLabel(
                              "https://cdn-icons-png.flaticon.com/128/9102/9102633.png",
                              "Morango",
                            ),
                            _buildIconWithLabel(
                              "https://cdn-icons-png.flaticon.com/128/499/499606.png",
                              "Chocolate",
                            ),
                            _buildIconWithLabel(
                              "https://cdn-icons-png.flaticon.com/128/1046/1046767.png",
                              "Melancia",
                            ),
                            _buildIconWithLabel(
                              "https://cdn-icons-png.flaticon.com/128/9097/9097206.png",
                              "Limão",
                            ),
                          ],
                        ),
                      ),
                      
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 35,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconWithLabel(String imageUrl, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          padding: EdgeInsets.all(10),
          child: Image.network(
            imageUrl,
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}