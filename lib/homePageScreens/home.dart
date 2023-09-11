import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../const.dart';
import '../homePages/mapSetting.dart';
import '../homePages/searchPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Customize the app bar background color
        elevation: 0, // Remove the shadow
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  cursorColor: Colors.grey,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchPage(),
                      ),
                    );
                  },
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    isDense: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: const Icon(Icons.search,size: 22),
                    hintText: '#SearchAnyThing',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MapSetting(),
                    ),
                  );
                },
                child: Container(
                  height: 48,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Image.asset(
                      'assets/images/shape (Stroke).png',
                      width: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 600,
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(37.7749, -122.4194), // Replace with your desired coordinates
                  zoom: 12.0,
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
