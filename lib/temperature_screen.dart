import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 5, title: Text("Temperature Conversion")),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Degree",
                  hintText: "Enter temperature in Degree Celius",
                ),
              ),

              SizedBox(height: 35),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Kelvin",
                  hintText: "Enter temperature in Kelvin",
                ),
              ),

              SizedBox(height: 35),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Fahrenheit",
                  hintText: "Enter temperature in Fahrenheit",
                ),
              ),

              SizedBox(height: 25),

              TextButton(onPressed: () {}, child: Text("Clear")),

              SizedBox(height: 60),
              Container(
                width: double.infinity,
                //alignment: Alignment(0, 0),
                decoration: BoxDecoration(
                  border: BoxBorder.all(color: Colors.white60),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Temperature Conversion in Various Units",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),

                      SizedBox(height: 7),

                      Text(
                        "• Degree Celcius to Fahrenheit: F = (°C * 9/5) + 32",
                        style: TextStyle(fontSize: 15),
                      ),

                      SizedBox(height: 6),
                      Text(
                        "• Degree Celcius to Kelvin: K = °C * 273.15",
                        style: TextStyle(fontSize: 15),
                      ),

                      SizedBox(height: 6),

                      Text(
                        "• Fahrenheit to Degree Celcius: °C = (°F - 32) * 9/5",
                        style: TextStyle(fontSize: 15),
                      ),

                      SizedBox(height: 6),

                      Text(
                        "• Fahrenheit to Kelvin: K = (°F -32) * 9/5)",
                        style: TextStyle(fontSize: 15),
                      ),

                      SizedBox(height: 6),

                      Text(
                        "• Kelvin to Degree Celcius: °C = K - 273.15",
                        style: TextStyle(fontSize: 15),
                      ),

                      SizedBox(height: 6),

                      Text(
                        "• Kelvin to Fahrenheit: F = (K * 9/5) - 459.67",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
