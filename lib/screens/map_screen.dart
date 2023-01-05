import 'package:flutter/material.dart';
import 'package:my_app/providers/location_provider.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatefulWidget {
  static const String id = 'map-screen';


  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    final locationData = Provider.of<LocationProvider>(context);
    return Center(
      child:Text('${locationData.longitude} : ${locationData.longitude}'),
    );
  }
}
