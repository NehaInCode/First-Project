
// ignore: depend_on_referenced_packages
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


 void showCustomDialog(BuildContext context, String title, Widget content, String btn1, Color btn1Clr ,Function() onTapBtn1,String btn2 , Color btn2Clr , Function() onTapBtn2 ) {
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
            content: content,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: btn1Clr,
                        fixedSize: const Size(110, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                      onPressed: () {
                        onTapBtn1();
                    Navigator.of(context).pop();
                  }, child: customText(btn1, 14, grey, FontWeight.normal)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: btn2Clr,
                          fixedSize: const Size(110, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      onPressed: () {
                        onTapBtn2();
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

// ignore: camel_case_types
class customTab extends StatelessWidget{
  final String text;
  final double width;


  const customTab(this.text, this.width, {super.key});

  @override
  Widget build(BuildContext context) {
   return SizedBox(
     width: width,
     child: Tab(text: text,),
   );
  }

}

void showCustomDialogS(BuildContext context){


  showDialog(

    context: context,
    builder: (context) {


      return AlertDialog(

        backgroundColor: Colors.white,
        content: Material(
          color: Colors.transparent,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.white
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 15),
                Image.asset('assets/images/popupImage.png',height: 140,),
                const SizedBox(height: 30),
                customText('Top Up Successful', 16, grey, FontWeight.w700),
                const SizedBox(height: 20),
                customText('Congratulation! You have successfully topped up your E-Wallet!', 14, grey, FontWeight.w400),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }, child: customText('Ok', 14, grey, FontWeight.normal)),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
