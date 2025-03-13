import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WeatherPage(),
    );
  }
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(icon: const Icon(Icons.add_box), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Today',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 32),
            const Text(
              '28°C',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 85,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 32),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.black,
              margin: EdgeInsets.symmetric(horizontal: 20),
            ),
            const SizedBox(height: 32),
            const Text(
              'Sunny',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit, color: Colors.blue),
                  const Text(
                    '5 km/h',
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 222, 222),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Next 7 days',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      weatherColumn('Now', '28°C', '10 km/h', '0%'),
                      weatherColumn('17.00', '28°C', '10 km/h', '0%'),
                      weatherColumn('20.00', '28°C', '10 km/h', '0%'),
                      weatherColumn('23.00', '28°C', '10 km/h', '0%'),
                    ],
                  ),
                ],
              ),
            ),
            Column( 
              children: [
                const SizedBox(height: 62),
                const Text('Developed By: muhammadalifian.id')
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget weatherColumn(String time, String temp, String wind, String rain) {
    return Column(
      children: [
        Text(
          time,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 10),
        Icon(Icons.ac_unit_rounded, size: 32, color: Colors.blue),
        Text(
          temp,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 14),
        Icon(Icons.wind_power, size: 32, color: Colors.red),
        const SizedBox(height: 4),
        Text(wind, style: const TextStyle(fontSize: 14, color: Colors.red)),
        const SizedBox(height: 14),
        Icon(Icons.umbrella, size: 32),
        const SizedBox(height: 4),
        Text(rain, style: const TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}
