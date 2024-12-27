import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statmanagment/weather/weather_provider.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: Consumer<WeatherProvider>(
        builder: (context, model, child) => Scaffold(
          body: Center(
            child: model.isloading
                ? CircularProgressIndicator()
                : Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      GestureDetector(
                          onTap: () {
                            model.getWeatherData('karachi');
                          },
                          child: Text('Weather Data')),
                      const SizedBox(height: 20),
                      Text('${model.weatherModel.location?.country}'),
                      const SizedBox(height: 10),
                      Text('${model.weatherModel.location?.name}'),
                      const SizedBox(height: 10),
                      Text('${model.weatherModel.current?.temperature} c'),
                      Image.network(
                          '${model.weatherModel.current?.weatherIcons?[0]}')
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
