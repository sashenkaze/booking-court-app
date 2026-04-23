import 'package:court_booking/views/booking_receipt.dart';
import 'package:court_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class QrisPayment extends StatelessWidget {
  const QrisPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "QRIS Payment",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 20, horizontal: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Text("Payment Amount"),
              Text("Rp. 125.000"),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.grey.shade200,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: QrImageView(
                    data: 'ihaventtookashowersince2020lmfaooo',
                    size: 260,
                    version: QrVersions.auto,
                  ),
                ),
              ),
              Text("Scan to Pay"),
              Text("Point your camera at the QR code"),
              Text(
                "Open your mobile banking or e-wallet app and scan the QR code above to complete your payment",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(),
              ),
              Spacer(),
              CustomButton(
                textButton: "I Have Paid",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookingReceipt()),
                  );
                },
              ),
              Row(
                children: [
                  Icon(Icons.share),
                  Text("Share"),
                  Icon(Icons.download),
                  Text("Save"),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
