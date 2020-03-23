import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(GoogleMaps());

class GoogleMaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MapType _currentMapType = MapType.normal;
  GoogleMapController mapController;

  String buscarDireccion;

  static const LatLng _center = const LatLng(23.0250594, 72.5267967);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: onMapCreated,
            mapType: _currentMapType,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: new FloatingActionButton(
                onPressed: _onMapTypeButtonPressed,
                child: new Icon(
                  Icons.map,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 30.0,
            right: 15.0,
            left: 15.0,
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Address to Search',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                    suffixIcon: IconButton(
                        icon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: barraBusqueda,
                      iconSize: 30.0,
                    )),
                  ),
                  onChanged: (val) {
                    setState(() {
                      buscarDireccion = val;
                    });
                  }),
            ),
          )
        ],
      ),
    );
  }

  //Funcion que creamos para busqueda por direccion
  barraBusqueda() {
    Geolocator().placemarkFromAddress(buscarDireccion).then((result) {
      mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target:
              LatLng(result[0].position.latitude, result[0].position.longitude),
          zoom: 10.0)));
    });
  }

  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }
}
