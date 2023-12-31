// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:guido/const.dart';

class SetPrice extends StatefulWidget {
  const SetPrice({super.key});

  @override
  State<SetPrice> createState() => _SetPriceState();
}

class _SetPriceState extends State<SetPrice> {
  bool isRentSelected = false;
  bool isSaleSelected = false;
  Color btnClr = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Set Price', 18, grey, FontWeight.normal),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              customText('Item Description', 14, grey, FontWeight.w700),
           const SizedBox(
             height: 20,
           ),
              SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: grey,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: grey,
                      )
                    ),

                    hintText: 'Enter product description',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff9E9E9E),
                      fontWeight: FontWeight.w100
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              customText('Category Price', 14, grey, FontWeight.w700),
              const SizedBox(height: 15,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(160, 50),
                          backgroundColor: isRentSelected ? primaryColor : btnClr,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                        onPressed: () {
                          setState(() {
                            isRentSelected = true;
                            isSaleSelected = false;

                          });
                    }, child: customText('Rent', 14, grey, FontWeight.normal)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(160, 50),
                            backgroundColor: isSaleSelected ? primaryColor : btnClr,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        onPressed: () {
                          setState(() {
                            isSaleSelected = true;
                            isRentSelected = false;

                          });
                    }, child: customText('Sale', 14, grey, FontWeight.normal)),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              customText('Set Price', 14, grey, FontWeight.w700),
              const SizedBox(height: 10,),
              SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: grey,
                  decoration: InputDecoration(
                    hintText: 'Set your price',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 14,
                      color: Color(0xff9E9E9E),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: grey)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.add,size: 20,color: Color(0xff4468FA)),
                      customText('Add Price', 14, const Color(0xff4468FA), FontWeight.normal)
                    ],
                  )
                ),
              ),
              const SizedBox(height: 230,),
              // Spacer(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffE0E0E0),
                      fixedSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    onPressed: () {

                }, child: customText('Done', 14, Colors.white, FontWeight.normal)),
              ),
              const SizedBox(height: 20,),



            ],
          ),
        ),
      ),
    );
  }
}
