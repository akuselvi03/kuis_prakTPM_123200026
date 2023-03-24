import 'package:flutter/material.dart';
import 'package:kuis_praktpm/data_barang.dart';
import 'package:kuis_praktpm/detail_barang.dart';

class ListBarang extends StatelessWidget{
  const ListBarang({Key? key}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman List Barang'),
      ),
      body: ListView.builder(
        itemCount: groceryList.length,
        itemBuilder: (context, index) {
          final Groceries place = groceryList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => HalamanDetail(place: place,),),
              );
            },
            child: Card(
              child: Row(
                children: [
                  //gambar
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/2,
                    child: Image.network(place.getimageurl),
                  ),
                  //text
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(place.name),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(place.description),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}