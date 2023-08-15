
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guido/AddPostScreens/Set_Price.dart';
import 'package:guido/AddPostScreens/search.dart';
import 'package:guido/const.dart';
import 'package:guido/homePageScreens/post.dart';

class AddNewPost extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AddNewPostState();
  }

class _AddNewPostState extends State<AddNewPost>{

  void showFinalDialog(BuildContext context ){
showDialog(
  context: context,
  builder: (context) {
    return Container(
      child: AlertDialog(
content: Column(
  children: [
    Image.asset('assets/images/popupImage.png',height: 30,),
    customText('Upload Successful', 16, grey, FontWeight.w700),
    customText('Your post has been successfully uploaded, and automatically appear in the community channel', 14, grey, FontWeight.w400)
  ],
),
      ),
    );
  },
);
}

  bool _isSwitched = false;
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Center(child: Padding(
         padding: const EdgeInsets.only(right: 50.0),
         child: customText('New Post', 16, grey, FontWeight.w500),
       )),
     ),
     body: Padding(
       padding: const EdgeInsets.all(10.0),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             InkWell(
               onTap: () {

               },
               child: Container(
                 color: Color(0xffFAFAFA),
                 height: 150,
               width: 150,
                 child: Icon(Icons.add,color: Color(0xaa0A0A0A),),
               ),
             ),
             SizedBox(
               height: 15,
             ),
             Container(
               width: double.infinity,
               height: 55,
               child: TextField(
                 controller: title,
                 cursorColor: Color(0xff404040),
                 decoration: InputDecoration(
                   hintText: 'Add Title',
                   hintStyle: TextStyle(
                     color: Color(0xff9E9E9E),
                     fontSize: 14,
                     fontWeight: FontWeight.w100
                   ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xff404040)),
                     ),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                   )
                 ),
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               child: Padding(
                 padding: const EdgeInsets.only(left: 15.0),
                 child: customText('Maximum of 25 words', 12, Color(0xff9E9E9E), FontWeight.w100),
               ),
             ),
             SizedBox(
               height: 20,
             ),
             Container(
               width: double.infinity,
decoration: BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(10))
),
               child: TextField(
                 maxLines: 5,
                 maxLength: null,
                 cursorColor: Color(0xff404040),
                 controller: description,
                 decoration: InputDecoration(
                   hintText: 'Add Description',
                   hintStyle: TextStyle(
                     fontWeight: FontWeight.w100,
                     color: Color(0xff9E9E9E),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Color(0xff404040)),
                   ),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                   )
                 ),
               ),
             ),
               SizedBox(
                 height: 10,
               ),
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(left: 15.0),
                   child: customText('Maximum of 500 words', 12, Color(0xff9E9E9E), FontWeight.w100),
                 ),
               ),
             SizedBox(
               height: 20,
             ),
             Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                     customText('More Information', 14, grey, FontWeight.w700),
                   ],),
                 SizedBox(
                   height: 25,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     customText('Set a Bizmarker', 14, grey, FontWeight.normal),
                     Container(
                       height: 10,
                       child:Transform.scale(
                         scale: 0.75,
                         child: Switch(
                           inactiveTrackColor: Color(0x66404040),
                           activeColor: Colors.white,
                           inactiveThumbColor: Colors.white,
                           activeTrackColor: Color(0xff4468FA),
                           value: _isSwitched, onChanged: (value) {
                           setState(() {
                             _isSwitched = value;
                           });
                         },),
                       )

                     )
                   ],
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     customText('Set the Price',  14, grey, FontWeight.normal),
                     InkWell(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SetPrice(),));
                       },
                       child: Row(
                         children: [
                           customText('Haven\'t set a price yet', 12,  Color(0x660A0A0A), FontWeight.w400),
                           SizedBox(
                             width: 5,
                           ),
                           Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff404040),size: 13,)
                         ],
                       ),
                     )
                   ],
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     customText('Select Location',  14,grey, FontWeight.normal),
                     InkWell(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => LocationAddPage(),));
                       },
                       child: Row(
                         children: [
                           customText('No Location', 12, Color(0x660A0A0A), FontWeight.w400),
                           SizedBox(
                             width: 5,
                           ),
                           Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff404040),size: 13,)
                         ],
                       ),
                     )
                   ],
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     customText('Add Post Hashtag',  14, grey, FontWeight.normal),
                     InkWell(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SearchAddPage(),));
                       },
                       child: Row(
                         children: [
                           customText('0 Interest', 12, Color(0x660A0A0A), FontWeight.w400),
                           SizedBox(
                             width: 5,
                           ),
                           Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff404040),size: 13,)
                         ],
                       ),
                     )
                   ],
                 ),
                 SizedBox(
                   height: 40,
                 ),
                 Align(
                   alignment: Alignment.bottomCenter,
                   child: Container(
                     width: double.infinity,
                     height: 50,
                     child: Row(
                       children: [
                         Container(
                           width: 50,
                           height: 50,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                             border: Border.all(
                               color: Colors.red,
                               width: 1,
                             )
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(13.0),
                             child: Image.asset('assets/images/Trash.png',width: 25),
                           ),
                         ),
                         SizedBox(
                           width: 5,
                         ),
                         Container(
                           height: 50,
                           width: 50,
                           decoration: BoxDecoration(
borderRadius: BorderRadius.all(Radius.circular(10)),
                             border: Border.all(
                               color: grey,
                               width: 1
                             )
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(13.0),
                             child: Image.asset('assets/images/pencilBox.png',width: 25,),
                           ),
                         ),
                         SizedBox(
                           width: 5,
                         ),
                         ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               fixedSize: Size(230, 50),
                               backgroundColor: primaryColor,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                               )
                             ),
                             onPressed: () {
                               showCustomDialog(context, 'Set Post as a Bizmarker?', 'When you activate bizmarker, this post will appear in the community channel', 'Cancel',Colors.white,(){} ,'Yes',primaryColor,(){
                                   showFinalDialog(context);
                               },
                               );

                         }, child: customText('Post', 15, grey, FontWeight.normal))
                       ],
                     ),
                   ),
                 )
               ],
             ),

             SizedBox(
               height: 60,
             ),
             Center(
               child: Container(
                 height: 2,
                 width: 130,
                 color: grey,
               ),
             ),

           ],
         ),
       ),
     ),
   );
  }

}