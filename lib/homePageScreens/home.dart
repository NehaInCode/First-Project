import 'package:flutter/material.dart';
import '../const.dart';
import '../homePages/mapSetting.dart';
import '../homePages/searchPage.dart';
import 'dart:core';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  final String mapBoxApiKey =
      'pk.eyJ1Ijoia2h1cnNoaWQxMiIsImEiOiJjbGU2cDRyNTUwb3lyM3NxaWFhdDNiMzZsIn0.7dlV78oIGQALdfZ8aNYAVw';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 330,
                  margin: const EdgeInsets.only(right: 19.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          // width: 285,
                          height: 45,
                          child: TextField(
                            cursorColor: grey,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SearchPage(),
                                  ));
                            },
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: grey)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                prefixIcon: const Icon(Icons.search),
                                hintText: '#SearchAnyThing',
                                hintStyle:
                                    const TextStyle(fontWeight: FontWeight.w100,
                                    fontSize: 15)),
                          ),
                        ),
                      ),

                      SizedBox(width: 4,),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MapSetting(),
                              ));
                        },
                        child: Container(
                          height: 45,
                          width: 35,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: grey),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/shape (Stroke).png',
                              width: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          // child: MapboxMap(
          //   accessToken: mapBoxApiKey,
          //   initialCameraPosition:
          //       CameraPosition(target: LatLng(37.7749, -122.4194)),
        ),
      ),
    );
  }
}
