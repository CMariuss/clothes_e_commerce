import 'package:flutter/material.dart';

class AdContainer extends StatelessWidget {
  const AdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final adImage = Image.asset(
      'images/ad_container/ad_container_01.jpg',
    );

    return Expanded(
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            image: adImage.image,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0x30000000),
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
