import 'package:flutter/material.dart';
import 'package:flutter_application_1/icecream.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 230, 187, 153),
              const Color.fromARGB(255, 231, 162, 106),
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
            const SizedBox(height: 20), 
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
                      const SizedBox(height: 25), // Espaço do topo
                      Image.network(
                        "https://cdn-icons-png.flaticon.com/512/5787/5787016.png",
                        width: 70, // Tamanho do ícone
                        height: 70,
                      ),
                      const SizedBox(height: 20), // Espaço entre ícone e texto
                      const Text(
                        "Burguer",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "°  Mc Donald's Big Mac  °",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Divider(
                            thickness: 2,
                            color: Color.fromARGB(255, 231, 162, 106),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    const Color.fromARGB(255, 230, 187, 153),
                                    const Color.fromARGB(255, 231, 162, 106),
                                  ],
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
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDuyhFQZspWy7qc8RvXfvd6uP9mKhk7EIJVg&s",
                              "Alface",
                            ),
                            _buildIconWithLabel(
                              "https://cdn-icons-png.flaticon.com/512/1202/1202125.png",
                              "Tomate",
                            ),
                            _buildIconWithLabel(
                              "https://cdn-icons-png.flaticon.com/512/5017/5017445.png",
                              "Pão",
                            ),
                            _buildIconWithLabel(
                              "https://cdn-icons-png.flaticon.com/512/3199/3199950.png",
                              "Queijo",
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetalhePage(),
                            ),
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
          child: Image.network(imageUrl, width: 40, height: 40),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

