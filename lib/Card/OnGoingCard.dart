

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trandtribe/MyOrder/TrackOrderScreen.dart';

class OngoingCard extends StatelessWidget {
  const OngoingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        
      },
      child: Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3)),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 100,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/tshirt4.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const Text(
                        "T-SHIRT WITH CONTRAST PATCH",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, 
                        ),
                      ),
                   
                    Text(
                      "Quantity: 1",
                      style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                    Text(
                      "Size: M",
                      style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                    const Spacer(),
                    const Text(
                  "EUR 22.95",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                  ],
                ),
             
            ),
            // Spacer(),
            // TextButton(onPressed: (){},
            // style: ButtonStyle(
            //   backgroundColor: MaterialStatePropertyAll(Colors.black)
            // ),
            //  child: Text("Track Order", style: TextStyle(color: Colors.white, fontSize: 13),))
           InkWell(
            onTap: (){Get.to(TrackOrderScreen());},
            child:  Container(
              height: 35,
              width: 95,
             
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8)              ),
              child: const Center(
                child:  Text(
                  "Track Order",
                  style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
           )
          ],
        ),
      ),
            ),
    );
      
  }
}
