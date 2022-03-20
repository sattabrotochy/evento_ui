import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      leading: const InkWell(
        child: Icon(Icons.arrow_back_ios),
      ),
      ),
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,

          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                child: Column(
                  children: [

                    Container(
                      height: 111,
                      width: 111,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55),
                          border: Border.all(
                              width: 5,
                              color: Colors.grey
                          ),
                          image: const DecorationImage(
                              image: NetworkImage("https://images.unsplash.com/photo-1619378881082-f97e57e1f20a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fHJvY2slMjBtdXNpYyUyMGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover
                          )
                      ),
                    ),

                    Text("Nayeem Azf",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                        height: 1.8,
                        fontSize: 20
                    ),),

                    Text("Sylhet Bangladesh",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                        fontSize: 14
                    ),),


                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFFBFBFB),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42)),
                  ),
                  child: Column(
                    children: [

                    ],
                  ),
                ),


              ),

            ],
          ),
        )
      ),
    );
  }
}
