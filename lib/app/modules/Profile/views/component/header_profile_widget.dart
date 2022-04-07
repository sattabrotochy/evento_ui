import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderProfileWidget extends StatelessWidget {
  const HeaderProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            height: 111,
            width: 111,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55),
                border: Border.all(width: 5, color: Colors.grey),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1619378881082-f97e57e1f20a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fHJvY2slMjBtdXNpYyUyMGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                    fit: BoxFit.cover)),
          ),
          Text(
            "Nayeem Azf",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: Colors.white,
                height: 1.8,
                fontSize: 20),
          ),
          Text(
            "Sylhet Bangladesh",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: Colors.white,
                fontSize: 14),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
