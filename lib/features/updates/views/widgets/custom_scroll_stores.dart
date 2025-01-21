import 'package:flutter/material.dart';
import 'package:whatsapp_app/core/style/text_style.dart';
import 'package:whatsapp_app/model/store_model.dart';

class CustomScrollStores extends StatelessWidget {
  CustomScrollStores({super.key,required this.storeModel});
  StoreModel storeModel;
  @override
  Widget build(BuildContext context) {
          return Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.green,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                storeModel.image),
                            radius: 23,
                          )),
                      Spacer(),
                      Text(
                        storeModel.name,
                        style: styleBold(),
                      ),
                    ],
                  ),
                ),
                width: 120,
                height: 200,
                decoration: BoxDecoration(
                    image:  DecorationImage(
                        image: NetworkImage(
                            storeModel.statue),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(16)),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          );
        
  }
}
