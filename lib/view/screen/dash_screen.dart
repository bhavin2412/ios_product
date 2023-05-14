import 'package:flutter/cupertino.dart';
import 'package:ios_product/provider/productProvider.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  PetProvider? petProviderFalse;
  PetProvider? petProviderTrue;
  @override
  Widget build(BuildContext context) {
    petProviderFalse = Provider.of<PetProvider>(context, listen: false);
    petProviderTrue = Provider.of<PetProvider>(context, listen: true);
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            middle: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Pet Shop",
                style: TextStyle(
                    letterSpacing: 2, fontWeight: FontWeight.bold, fontSize: 30),
              ),
            )),
        child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: ListView.builder(
                itemBuilder: (context, index) => petview(index),
                itemCount: petProviderFalse!.petinfo.length,
              ),
            )));
  }

  Widget petview(int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.5),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "${petProviderFalse!.petinfo[index].image}",
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${petProviderFalse!.petinfo[index].name}",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    color: CupertinoColors.black),
              ),
              SizedBox(height: 5),
              Text("\$${petProviderFalse!.petinfo[index].rate}",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      color: CupertinoColors.systemGrey)),
            ],
          ),
          Spacer(),
          Icon(CupertinoIcons.add_circled),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
