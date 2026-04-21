import 'package:court_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Sports Courts",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView.separated(
          itemCount: 5,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10);
          },
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 2,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Futsal Court A", style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                        Spacer(),
                        Icon(Icons.star, color: Colors.amber,),
                        Text("4.5", style: GoogleFonts.poppins(
                          fontSize: 16,
                        ),
                        ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Indoor • Air Conditioner",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4B5663")
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(
                              "Rp. 50.000/hour",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            CustomButton(
                              textButton: "Submit", 
                              onPressed: () {},
                              heightButton: 30,
                              widthButton: 100,
                              titleSize: 12,
                              radius: 8,
                              ),
                          ],
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
