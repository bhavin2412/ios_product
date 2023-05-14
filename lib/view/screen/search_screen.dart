import 'package:flutter/cupertino.dart';
import 'package:ios_product/provider/productProvider.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  PetProvider? petProviderFalse;
  PetProvider? petProviderTrue;

  @override
  Widget build(BuildContext context) {
    petProviderFalse = Provider.of<PetProvider>(context, listen: false);
    petProviderTrue = Provider.of<PetProvider>(context, listen: true);
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            backgroundColor: CupertinoColors.white,
            border: Border.all(width: 0.0, style: BorderStyle.none),
            middle: Align(
              alignment: Alignment.center,
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey5,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      CupertinoIcons.search,
                      color: CupertinoColors.black,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Search",
                      style: TextStyle(
                          letterSpacing: 1,
                          color: CupertinoColors.black,
                          fontSize: 15),
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.clear_circled_solid,
                      color: CupertinoColors.black,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            )),
        child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
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
