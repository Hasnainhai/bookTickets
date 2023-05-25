import 'package:book_tickets/screens/homeScreen/widgets/thickContainer.dart';
import 'package:book_tickets/utilils/appLayOut.dart';
import 'package:book_tickets/utilils/app_styles.dart';
import 'package:flutter/material.dart';

class TicketView extends StatefulWidget {
  final Map<String, dynamic> tickets;
  const TicketView({super.key, required this.tickets});

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
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        widget.tickets['from']['code'],
                        style: Styles.textStyle.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24.0,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3.0,
                                        height: 1.0,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 0.0,
                                child: const Icon(
                                  Icons.local_shipping,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        widget.tickets['to']['code'],
                        style: Styles.textStyle.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.0,
                        child: Text(
                          widget.tickets['from']['name'],
                          style: Styles.headLine4.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        widget.tickets['flying_time'],
                        style: Styles.headLine4.copyWith(color: Colors.white),
                      ),
                      Text(
                        widget.tickets['to']['name'],
                        style: Styles.headLine4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.amber,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                              width: 3.0,
                              height: 1.0,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.tickets['date'],
                        style: Styles.headLine3.copyWith(color: Colors.white),
                      ),
                      Text(
                        widget.tickets['departure_time'],
                        style: Styles.headLine3.copyWith(color: Colors.white),
                      ),
                      Text(
                        widget.tickets['number'].toString(),
                        style: Styles.headLine3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date',
                        style: Styles.headLine4.copyWith(color: Colors.white),
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        'Departure time',
                        style: Styles.headLine4.copyWith(color: Colors.white),
                      ),
                      Text(
                        'Number',
                        style: Styles.headLine4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
