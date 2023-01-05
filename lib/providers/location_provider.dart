


import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class LocationProvider with ChangeNotifier{

  double? latitude; // both variable made nullable
  double? longitude;
  bool permissionAllowed = false;
  Future<void> getCurrentPosition()async{

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    if(position != null){
      this.latitude = position.latitude;
      this.longitude = position.longitude;
      this.permissionAllowed = true;
      notifyListeners();
    }else{
      print('Permission not allowed');
    }


  }


}