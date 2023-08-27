import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guido/const.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: customText('Top Up', 16, grey, FontWeight.w600),
),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText('Top-up Amount', 14, grey, FontWeight.w400),
            SizedBox(height: 15),
            Container(
              height: 50,
              width: double.infinity,
              child: TextField(
                cursorColor: grey,
                decoration: InputDecoration(
                  hintText: 'SGD  \$500.00',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: grey,
                    )
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  )
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(75, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    onPressed: () {
                  
                }, child: customText('100', 12, grey, FontWeight.normal)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(75, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    onPressed: () {

                }, child: customText('200', 12, grey, FontWeight.normal)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(75, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    onPressed: () {

                }, child: customText('500', 12, grey, FontWeight.normal)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(78, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    onPressed: () {

                }, child: customText('1,000', 12, grey, FontWeight.normal)),
              ],
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    fixedSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => TopUpNext(),));
              }, child: customText('Next', 14, grey, FontWeight.normal)),
            )
          ],
        ),
      ),
    );
  }
}

class TopUpNext extends StatefulWidget {
  const TopUpNext({super.key});

  @override
  State<TopUpNext> createState() => _TopUpNextState();
}

class _TopUpNextState extends State<TopUpNext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Top Up', 16, grey, FontWeight.w600),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText('Credit/Debit Card', 14, grey, FontWeight.w400),
            SizedBox(height: 25),
            customText('Paypal', 14, grey, FontWeight.w400),
            SizedBox(height: 25),
            customText('DBS Paylah! Express Checkout', 14, grey, FontWeight.w400),
            Spacer(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    fixedSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  onPressed: () {
                    showCustomDialogS(context);
              }, child: customText('Next', 14, grey, FontWeight.normal)),
            ),
          ],
        ),
      ),
    );
  }
}

