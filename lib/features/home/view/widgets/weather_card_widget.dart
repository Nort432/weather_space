import 'package:flutter/material.dart';
import 'package:weather_space/features/home/data/models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weatherModel;

  WeatherCard({required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    // if ( == null || temperature == null || index == null) {
    //   return Text('Data is null');
    // }
    final times = weatherModel.hourly.time;

    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: times.length,
        itemBuilder: (context, i) {
          final time = DateTime.parse(times[i]);
          final temperature = weatherModel.hourly.temperature2M[i];
          final uvIndex = weatherModel.hourly.uvIndex[i];

          DateTime now = DateTime.now();
          // DateTime nearestDate = times.map(DateTime.parse).reduce((a, b) => a.isBefore(now) && a.isAfter(b) ? a : b);
          // bool isNearest = time == nearestDate;

          bool isCheck = now.hour == time.hour;

          return Card(
            color: isCheck ? Colors.green : Colors.transparent,
            child: ListTile(
              title: Text('Temperature: ${temperature}°C'),
              subtitle: Text('Date Time: ${time} \nUV Index: ${uvIndex}%'),
            ),
          );
        },
      ),
    );
  }
}
