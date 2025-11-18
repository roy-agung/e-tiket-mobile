import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'list_tiket.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 102, 255),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 30,),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/welcome.png"),
              ),
            ),
          ),

          const SizedBox(height: 50),
          Container(
            height: 250,
              width: double.infinity,
                padding: const EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                  ),
            child: Column(
              children: [
                Text("Ticketing App", style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 26),
                ),

                Text("Membantu anda untuk managemen pembelian Tiket agar lebih efisien", 
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 24,
                color: Colors.grey[600]),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListTiket()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent,
                    ),
                  
                    child: Center(
                    child: Text("Get Started", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 22),
                    )
                    ),
                  )
                )
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}