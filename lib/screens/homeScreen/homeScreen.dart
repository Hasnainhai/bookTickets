import 'package:book_tickets/utilils/app_styles.dart';
import 'package:book_tickets/view_model/Hotels_view/hotelsList_Info/hotels_list_info.dart';
import 'package:book_tickets/view_model/Hotels_view/hotels_view.dart';
import 'package:book_tickets/view_model/tickets_view/ticket_view.dart';
import 'package:book_tickets/view_model/tickets_view/ticketsList_Info/ticket_info.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLine4,
                        ),
                        Text(
                          'Book Tickets',
                          style: Styles.headLine1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://media.istockphoto.com/id/1137971264/vector/airplane-fly-out-logo-plane-taking-off-stylized-sign.jpg?s=612x612&w=0&k=20&c=TH1vDs4wmGnfWapq_e1XYxqzQV_qxaF4_aJWoDJyKNI=',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.amber,
                        ),
                      ),
                      Text(
                        'Search',
                        style: Styles.headLine4,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Buse\'s',
                      style: Styles.headLine2,
                    ),
                    Text(
                      'View All',
                      style: Styles.headLine4,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketsList
                  .map((sigleTicket) => TicketView(tickets: sigleTicket))
                  .toList(),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Styles.headLine2,
                ),
                Text(
                  'View All',
                  style: Styles.headLine4,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelsList
                  .map((singleHotel) => HotelsView(hotel: singleHotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
