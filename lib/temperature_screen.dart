import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController degreeController = TextEditingController();
  final TextEditingController kelvinController = TextEditingController();
  final TextEditingController fahrenheitController = TextEditingController();

  void updateFromCelcius(String value) {
    if (value.isEmpty) {
      kelvinController.clear();
      fahrenheitController.clear();
      return;
    }

    final double? celcius = double.tryParse(value);
    if (celcius != null) {
      fahrenheitController.text = ((celcius * 9 / 5) + 32).toStringAsFixed(2);
      kelvinController.text = (celcius + 273.15).toStringAsFixed(2);
    }
  }

  void updateFromKelcius(String value) {
    if (value.isEmpty) {
      degreeController.clear();
      fahrenheitController.clear();
      return;
    }

    final double? kelvin = double.tryParse(value);
    if (kelvin != null) {
      fahrenheitController.text = ((kelvin - 273.15) * 9 / 5 + 32)
          .toStringAsFixed(2);
      degreeController.text = (kelvin - 273.15).toStringAsFixed(2);
    }
  }

  void updateFromFahrenheit(String value) {
    if (value.isEmpty) {
      kelvinController.clear();
      degreeController.clear();
      return;
    }

    final double? fahrenheit = double.tryParse(value);
    if (fahrenheit != null) {
      degreeController.text = ((fahrenheit - 32) * 5 / 9).toStringAsFixed(2);
      kelvinController.text = ((fahrenheit - 32) * 5 / 9 + 273.15).toStringAsFixed(2);
    }
  }

  @override
  void dispose() {
    degreeController.dispose();
    kelvinController.dispose();
    fahrenheitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 5, title: Text("Temperature Conversion")),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                TextFormField(
                  onChanged: updateFromCelcius,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  controller: degreeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Degree Celcius °C",
                    hintText: "Enter temperature in Degree Celius",
                  ),
                ),

                SizedBox(height: 35),

                TextFormField(
                  onChanged: updateFromKelcius,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  controller: kelvinController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Kelvin",
                    hintText: "Enter temperature in Kelvin",
                  ),
                ),

                SizedBox(height: 35),

                TextFormField(
                  onChanged: updateFromFahrenheit,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  controller: fahrenheitController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Fahrenheit",
                    hintText: "Enter temperature in Fahrenheit",
                  ),
                ),

                SizedBox(height: 25),

                Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size(150.5, 0),
                      side: BorderSide(color: Colors.white),
                      elevation: 5,
                      backgroundColor: const Color.fromARGB(131, 141, 92, 164),
                      foregroundColor: const Color.fromARGB(255, 238, 238, 243),
                      padding: EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        degreeController.clear();
                        kelvinController.clear();
                        fahrenheitController.clear();
                      });
                    },
                    child: Text(
                      "Clear",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 50),

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
                          "• Degree Celcius to Fahrenheit: F = (°C * 32) * 5/9 + 273.15",
                          style: TextStyle(fontSize: 15),
                        ),

                        SizedBox(height: 6),
                        Text(
                          "• Degree Celcius to Kelvin: K = °C + 273.15",
                          style: TextStyle(fontSize: 15),
                        ),

                        SizedBox(height: 6),

                        Text(
                          "• Fahrenheit to Degree Celcius: °C = (°F - 32) * 5/9",
                          style: TextStyle(fontSize: 15),
                        ),

                        SizedBox(height: 6),

                        Text(
                          "• Fahrenheit to Kelvin: K = (°F -32) * 5/9 + 278.15",
                          style: TextStyle(fontSize: 15),
                        ),

                        SizedBox(height: 6),

                        Text(
                          "• Kelvin to Degree Celcius: °C = K - 273.15",
                          style: TextStyle(fontSize: 15),
                        ),

                        SizedBox(height: 6),

                        Text(
                          "• Kelvin to Fahrenheit: F = (K - 273.15) * 9/5 + 32",
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
      ),
    );
  }
}
