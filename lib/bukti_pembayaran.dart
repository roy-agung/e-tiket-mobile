import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuktiPembayaran extends StatelessWidget {
  final String jenisTiket;
  final String namaTiket;
  final String harga;
  final String metodePembayaran;

  const BuktiPembayaran({
    required this.jenisTiket,
    required this.namaTiket,
    required this.harga,
    required this.metodePembayaran,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 102, 255),
      appBar: AppBar(
        title: Text("Bukti Pembayaran", style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      ),
      body: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    height: 80,
                    width: 680,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 168, 200, 255),
                    ),
                    child: Center(
                      child: Image.asset("assets/icons/ceklis.png",
                      height: 30,
                      width: 30,)
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text("Pembayaran Berhasil", style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                    const SizedBox(height: 10),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Transaksi kamu selesai, Detail pembelian ada dibawah ini",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey[600]!),
                      textAlign: TextAlign.center
                    ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 235, 235, 235),
                      ),
                      
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(namaTiket, style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                            const SizedBox(height: 10),
                            Text(jenisTiket, style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                            const SizedBox(height: 10),
                            Text(harga, style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                            const SizedBox(height: 10),
                            Text(metodePembayaran, 
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                          ]
                        ),
                      ),
                ]
                      
                    
              )
              ),
          )
        ),
      );
  }
}