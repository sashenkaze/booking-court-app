import 'package:court_booking/views/home_page.dart';
import 'package:court_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingReceipt extends StatelessWidget {
  const BookingReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: 
      EdgeInsetsGeometry.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.grey.shade200,
            radius: 30,
            child: Icon(Icons.check, size: 28,),
          ),
          Text("Booking Successful"),
          Text("Your court has been reserved successfully"),
          SizedBox(height: 30,),
          Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    "Basketball Court A",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Indoor • Air Conditioned",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.calendar_month),
                      SizedBox(width: 10),
                      Text(
                        "Date",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: fromCssColor("#4B5563"),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Monday, Apr 30",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                    child: Center(
                      child: Divider(thickness: 1, color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.hourglass_full_rounded),
                      SizedBox(width: 10),
                      Text(
                        "Duration",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: fromCssColor("#4B5563"),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "2 hours",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                    child: Center(
                      child: Divider(thickness: 1.5, color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.discount),
                      SizedBox(width: 10),
                      Text(
                        "Price per Hour",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: fromCssColor("#4B5563"),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Rp. 50.000",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Subtotal (2 hours)",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: fromCssColor("#4B5563"),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Rp. 50.000",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Service Fee",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: fromCssColor("#4B5563"),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Rp. 5.000",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Hour",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Rp. 105.000",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(textButton: "Download Receipt", onPressed: (){}),
            CustomButton(textButton: "Back to Home", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            )
        ],
      ),),
    );
  }
}