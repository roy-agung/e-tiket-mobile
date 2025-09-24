import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pembayaran extends StatefulWidget {
  final String jenisTiket;
  final String namaTiket;
  final String harga;
  const Pembayaran({
    required this.jenisTiket,
    required this.namaTiket,
    required this.harga,
    super.key,
  });

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  State<Pembayaran> createState() => _PembayaranState();

  //ALERT TUNAI
  void _showTNDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            
          ),
          child: Container(
            padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pembayaran Tunai", style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 0, 102, 255),
                    fontSize: 20, 
                    fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/icons/duit.png", fit: BoxFit.contain),
              ),
              SizedBox(height: 25),
              Text("Pembayaran Tunai", style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, 
                fontSize: 18),
              ),
              SizedBox(height: 15),
              Text("Jika pembayaran telah diterima, klik button Konfirmasi Pembayaran untuk menyelesaikan transaksi",
              style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey[600]),
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 0, 102, 255),
                ),
                child: Center(
                  child: Text("Konfirmasi Pembayaran", style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, 
                    color: Colors.white, 
                    fontSize: 18),
                  ),
                )
              ),
            ],
          ),
          ),
        );
      }
    );
  }


//ALERT KARTU KREDIT
void _showKKDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            
          ),
          child: Container(
            padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pembayaran Debit", style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 0, 102, 255),
                    fontSize: 20, 
                    fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/icons/kredit.png", fit: BoxFit.contain),
              ),
              SizedBox(height: 20),
              Container(
                width: 250,
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("0899 2342 3242 234", style: GoogleFonts.poppins(
                  fontSize: 16),
                  
                ),
              ),
              SizedBox(height: 25),
              Text("Transfer Untuk Membayar", style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, 
                fontSize: 18),
              ),
              SizedBox(height: 15),
              Text("Pastikan nominal dan tujuan pembayaran sudah benar sebelum melanjutkan",
              style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey[600]),
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 0, 102, 255),
                ),
                child: Center(
                  child: Text("Konfirmasi Pembayaran", style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, 
                    color: Colors.white, 
                    fontSize: 18),
                  ),
                )
              ),
            ],
          ),
          ),
        );
      }
    );
  }


//ALERT QRIS
  void _showQrDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            
          ),
          child: Container(
            padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pembayaran QRIS", style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 0, 102, 255),
                    fontSize: 20, 
                    fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/icons/QR.png", fit: BoxFit.contain),
              ),
              SizedBox(height: 25),
              Text("Scan QR Untuk Membayar", style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, 
                fontSize: 18),
              ),
              SizedBox(height: 15),
              Text("Scan QR Code ini menggunakan aplikasi E-wallet Anda",
              style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey[600]),
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 0, 102, 255),
                ),
                child: Center(
                  child: Text("Konfirmasi Pembayaran", style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, 
                    color: Colors.white, 
                    fontSize: 18),
                  ),
                )
              ),
            ],
          ),
          ),
        );
      }
    );
  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 102, 255),
      appBar: AppBar(
        title: Text("Pembayaran", style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold, 
          fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: (20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[300],
        
                        ),
                        child: Center(
                          child: Image.asset("assets/icons/icon1.png",
                          height: 30,
                          width: 30,)
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Tagihan", style: GoogleFonts.poppins(color:Colors.grey, fontSize: 15),
                          ),
                          Text("${widget.harga}", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
        
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment. spaceBetween,
                    children: [
                      Text("Nama Pesanan", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500)),
                      Text("${widget.namaTiket}", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500)),
        
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment. spaceBetween,
                    children: [
                        Text("Jenis Tiket", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("${widget.jenisTiket}", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500)),
                    ]
                  ),
                ],
              ),
            
            ),
            const SizedBox(height: 20),
              
              Text("pilih Metode Pembayaran", style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)),
              const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                _showTNDialog(context);
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [ 
                    Row(
                      children: [
                        Image.asset("assets/icons/cash.png", 
                        height: 30,
                        width: 30,),
                        const SizedBox(width: 10),
                        Text("Tunai (Cash)", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500)
                        )
                      
                      ]
                    )
                  ]
                )
                         ),
            ),
              const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                _showKKDialog(context);
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [ 
                    Row(
                      children: [
                        Container(
                            child: Image.asset("assets/icons/debit.png", 
                            height: 30,
                            width: 30,)
                        ),
                        const SizedBox(width: 10),
                        Text("Debit", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500)
                        )
                      
                      ]
                    )
                  ]
                )
              ),
            ),
              const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                _showQrDialog(context);
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [ 
                    Row(
                      children: [
                        Image.asset("assets/icons/qris.png", 
                        height: 30,
                        width: 30,),
                        const SizedBox(width: 10),
                        Text("QRIS/QR Pay", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500)
                        )
                      
                      ]
                    )
                  ]
                )
              ),
            ),
          const SizedBox(height: 20),
          Text("Punya Pertanyaan?", style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)),
          const SizedBox(height:8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/icons/tanya.png",
                    width: 30,),
                    const SizedBox(width: 10),

                    Expanded(
                      child: Text("Hubungi Admin untuk bantuan pembayaran", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500)
                      ),
                    )
                  ]
                )
              ]
            )
            
           )
          ],
        )
        ),
      ),
    );
  }
}