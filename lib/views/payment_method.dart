import 'package:court_booking/views/booking_receipt.dart';
import 'package:court_booking/views/qris_payment.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Payment Method",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              "Choose Payment",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
            Text(
              "Select your preferred payment method",
              style: GoogleFonts.poppins(
                color: fromCssColor('#4B5563'),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 28),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookingReceipt()),
                  );
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.wallet),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pay on Location",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text("Cash Payment"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(thickness: 1, color: Colors.grey),
                    Text("Pay with cash when you arrive the location"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QrisPayment()),
                );
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.qr_code),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pay via QRIS",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text("Digital Payment"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(thickness: 1, color: Colors.grey),
                    Text("Scan QR code to pay instantly with your e-wallet"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 80),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info),
                      SizedBox(width: 5),
                      Text(
                        "Booking Policy",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.only(left: 30),
                    child: Text(
                      "Free Concellation up to 5 hours before your booking time. Equipment rental available on site.",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
