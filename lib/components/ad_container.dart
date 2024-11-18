import 'package:flutter/material.dart';

class AdContainer extends StatelessWidget {
  const AdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final adImage = Image.asset(
      'images/winter_collection_ad.png',
    );

    return Expanded(
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
            image: adImage.image,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0x60000000),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '50%',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20),
              Text(
                'WINTER\nCOLLECTION',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// const Column(
// // crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Text(
// 'WINTER COLLECTION',
// style: TextStyle(
// color: Colors.white,
// fontSize: 18,
// fontWeight: FontWeight.bold,
// ),
// ),
// SizedBox(width: 20),
// Text(
// '50%',
// style: TextStyle(
// color: Colors.white,
// fontSize: 50,
// fontWeight: FontWeight.bold,
// ),
// )
// ],
// ),
