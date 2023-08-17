import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFFFFD464);
Color grey = const Color(0xFF404040);

Widget customText(String text, double size, Color color, FontWeight fontWeight,
    {bool underline = false,
    TextOverflow overflow = TextOverflow.clip,
    int? maxLines}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
      decoration: underline ? TextDecoration.underline : TextDecoration.none,
    ),
    overflow: overflow,
    maxLines: maxLines,
  );
}


 void showCustomDialog(BuildContext context, String title, String content, String btn1, Color btn1Clr ,Function() onTapBtn1,String btn2 , Color btn2Clr , Function() onTapBtn2 ) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: AlertDialog(
            backgroundColor: Colors.white,
            title: customText(title, 16, grey, FontWeight.w700),
            content: customText(content, 14, grey, FontWeight.w400),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: btn1Clr,
                        fixedSize: Size(110, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                      onPressed: () {
                        onTapBtn1;
                    Navigator.of(context).pop();
                  }, child: customText(btn1, 14, grey, FontWeight.normal)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: btn2Clr,
                          fixedSize: Size(110, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      onPressed: () {
                        onTapBtn2;
                    Navigator.of(context).pop();
                  }, child: customText(btn2, 14, grey, FontWeight.normal)),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

class customTab extends StatelessWidget{
  final String text;
  final double width;


  customTab(this.text, this.width);

  @override
  Widget build(BuildContext context) {
   return Container(
     width: width,
     child: Tab(text: text,),
   );
  }

}
