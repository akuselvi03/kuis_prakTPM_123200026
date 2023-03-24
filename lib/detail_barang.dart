import 'package:flutter/material.dart';
import 'package:kuis_praktpm/data_barang.dart';

import 'list_barang.dart';

class HalamanDetail extends StatelessWidget{
  final Groceries place;
  const HalamanDetail({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListBarang(),
                    ),
                  );
                },
              );
            }),
        title: Text(place.name),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2,
            height: MediaQuery.of(context).size.height/2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(place.getimageurl),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Nama : " + place.name),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Deskripsi : " + place.description),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Harga : " + place.price),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Stok : " + place.stock),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Diskon : " + place.discount),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Nama Toko : " + place.storeName),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Link Produk : " + place.productUrl),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Link Gambar Produk : " + place.productImageUrls.toString()),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Review : " + place.reviewAverage),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}
