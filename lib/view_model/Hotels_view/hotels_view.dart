import 'package:book_tickets/utilils/app_styles.dart';
import 'package:flutter/material.dart';

class HotelsView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelsView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: 350,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: Colors.blue, width: 10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.57,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      hotel['hotelImg'],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              hotel['name'],
              style: Styles.headLine2,
            ),
            const SizedBox(height: 10.0),
            Text(
              hotel['location'],
              style: Styles.headLine3.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10.0),
            Text(
              hotel['price'],
              style: Styles.headLine2,
            ),
          ],
        ),
      ),
    );
  }
}
