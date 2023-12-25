import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');
// Anda dapat menggunakan variabel untuk menyimpan TextStyle dan meringkas kode.

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          /*
          Widget ini membutuhkan satu child yang nantinya bisa di-scroll pada layar.
          Pindahkan widget Column ke dalam SingleChildScrollView supaya nantinya bisa di-scroll.
           */

       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Image.asset('images/farm-house.jpg'),
           Container(
             margin: const EdgeInsets.only(top: 16.0),
             child: const Text(
               'Farm House Lembang',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                     fontSize: 30.0,
                     fontFamily: 'Staatliches',
                     //  parameter fontFamily pada widget TextStyle untuk menerapkan style pada Text

                     fontWeight: FontWeight.bold
                 ),
             ),
           ),
           Container(
             margin: const EdgeInsets.only(top: 16.0),
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Column(
                       children: <Widget>[
                        const Icon(Icons.calendar_today),
                        const SizedBox(height: 8.0),
                         Text(
                           'Open EveryDay',
                           style: informationTextStyle,
                         ),
                       ],
                   ),
                   Column(
                     children: <Widget>[
                      const Icon(Icons.access_time_rounded),
                      const SizedBox(height: 8.0),
                       Text(
                         '09:00 - 20:00',
                         style: informationTextStyle,
                       )
                     ],
                   ),
                   Column(
                       children: <Widget>[
                        const Icon(Icons.monetization_on),
                        const SizedBox(height: 8.0),
                         Text(
                             'Rp. 25.000',
                           style: informationTextStyle,
                         ),
                       ],
                   )
                 ]
             )
           ),
           Container(
               padding: const EdgeInsets.all(16.0),
               child: const Text(
                 'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                     fontSize: 16.0,
                   fontFamily: 'Oxygen'
                 ),
               )
           ),

           SizedBox(
             height: 150,
             child: ListView(
               scrollDirection: Axis.horizontal,
                 // untuk mengubahnya menjadi horizontal kita cukup menambahkan parameter scrollDirection bernilai Axis.horizontal.

                 children: <Widget>[

                   // tambahkan Padding pada masing-masing Image supaya antar gambar tidak terlalu rapat.
                   Padding(
                     padding: const EdgeInsets.all(4.0),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       
                       // mengambil gambar melalui url
                       child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                     )
                   ),

                   Padding(
                     padding: const EdgeInsets.all(4.0),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Image.network('https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                     )
                   ),

                   Padding(
                     padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                    )
                   ),

                 ],
             )
           ),
         //   ListView diletakkan di dalam Column, di mana keduanya sama-sama memiliki atribut height yang memakan space di sepanjang layar. Sebagai solusi kita perlu memberikan ukuran tinggi yang statis terhadap ListView. Namun ListView tidak memiliki parameter height, lantas bagaimana nih? Caranya, gunakan widget lain yang memiliki parameter height. Anda dapat membungkus widget ListView ke dalam Container atau pun SizedBox. Ukuran tinggi ini nantinya juga digunakan sebagai tinggi Image yang tampil.

         ],
       ),
      )
    )
    );
  }
}