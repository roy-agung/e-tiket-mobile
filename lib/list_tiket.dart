import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pembayaran.dart';
import 'tiket_model.dart';


class ListTiket extends StatelessWidget {
  final List<DataTiket> listTiket = [
    DataTiket(
      namaTiket: "Tiket Untuk Dewasa",
      jenisTiket: "Reguler",
      harga: "Rp 1.000.000",
    ),
    DataTiket(
      namaTiket: "Tiket Untuk Anak",
      jenisTiket: "Reguler",
      harga: "Rp 500.000",
    ),
    DataTiket(
      namaTiket: "Tiket VIP",
      jenisTiket: "Premiun",
      harga: "Rp 2.000.000",
    ),
  ];
  ListTiket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 102, 255),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ticketing App", style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        ),
      body: Padding(padding: EdgeInsets.only(top: 5, bottom: 15),
      child: ListView.builder(
            itemCount: listTiket.length,
            itemBuilder: (context, index){
              final tiket = listTiket[index];
              return Padding(
                padding: EdgeInsets.all(10),
                child: Container(
              height: 145,
              width: double.infinity,
              padding: EdgeInsets.all(11),
              decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(20),
              color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tiket.namaTiket, style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(tiket.jenisTiket, textAlign: TextAlign.left, style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey[600]
                ),
                ),
                SizedBox(height: 15), 
                Row(
                  children: [
                    Text(tiket.harga, style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize:20, color: Color.fromARGB(255, 35, 106, 229),
                    ),
                    ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => Pembayaran(
                          namaTiket: tiket.namaTiket,
                          jenisTiket: tiket.jenisTiket,
                          harga: tiket.harga,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 35, 106, 229),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 14,
                        ),
                        SizedBox(width: 5),
                        Text("Beli", style: GoogleFonts.poppins(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold
                        ),
                      ),
                      ]
                    ),
                  ),
                ),
              ],
            ),
            
              ],
            ),
          ),
              );
            },
          )
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     // SizedBox(height:20),
          
          

      //   ],
      // )
      ),
      );
  }
}