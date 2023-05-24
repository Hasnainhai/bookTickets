import 'package:book_tickets/utilils/appLayOut.dart';
import 'package:book_tickets/utilils/app_styles.dart';
import 'package:flutter/material.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsized(context);
    return SizedBox(
      width: size.width,
      height: 200.0,
      child: Container(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NYC',
                        style: Styles.textStyle,
                      ),
                      Text(
                        'LDN',
                        style: Styles.textStyle,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
