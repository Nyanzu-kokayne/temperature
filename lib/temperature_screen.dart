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

      body: SingleChildScrollView(
        child: Padding(
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
        
                SizedBox(height: 60),
                Container(
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
                        Text("Conversion Formulae"),
        
                        Text(
                          "• To convert from Celcius to Fahrenheit: F = (°C * 9/5) + 32",
                        ),
        
                        SizedBox(height: 5),
                        Text(
                          "• To convert from Celcius to Kelvin: K = °C * 273.15",
                        ),
                        SizedBox(height: 5),
        
                        Text(
                          "• To convert from Fahrenheit Celcius: °C = (°F - 32) * 9/5",
                        ),
        
                        SizedBox(height: 5),
        
                        Text(
                          "• To convert from Fahrenheit Kelvin: K = (°F -32) * 9/5)",
                        ),
        
                        SizedBox(height: 5),
        
                        Text(
                          "• To convert from Celcius to Fahrenheit: F = (°C * 9/5) + 32",
                        ),
        
                        SizedBox(height: 5),
        
                        Text(
                          "• To convert from Celcius to Fahrenheit: F = (°C * 9/5) + 32",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
