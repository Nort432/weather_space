import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:weather_space/core/localization/localization_extension.dart';
import 'package:weather_space/features/home/view/widgets/weather_card_widget.dart';
import 'package:weather_space/features/home/viewmodel/home_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _fetchCurrentLocation();
  }

  String locationMessage = 'load';

  void _fetchCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    // print('permission = ${permission.name}');
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
      Position position = await Geolocator.getCurrentPosition();
      context.read<HomeViewModel>().fetchWeather(position);
      setState(() {
        locationMessage = "Latitude: ${position.latitude}, Longitude: ${position.longitude}";
      });
    } else {
      setState(() {
        locationMessage = "Location permissions are denied";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc?.title ?? ''),
      ),
      body: Column(
        children: [
          // Center(child: Text(context.loc?.welcome ?? '')),
          // Center(child: Text(context.loc?.localeName ?? '')),
          // Center(child: Text(context.loc?.hello('Nort') ?? '')),
          // Center(child: Text(context.loc?.nWombats(5) ?? '')),
          Center(child: Text(locationMessage)),
          WeatherCard(weatherModel: context.read<HomeViewModel>().weather),
        ],
      ),
    );
  }
}
