import 'package:flutter/material.dart';
import 'package:weather_space/core/get_it.dart';
import 'package:weather_space/core/multi_provider_setup.dart';

void main() {
  setupLocator();
  runApp(MultiProviderSetup());
}
