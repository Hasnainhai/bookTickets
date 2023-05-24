import 'package:flutter/material.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: Colors.blue, width: 20.0),
        image: const DecorationImage(
          image: NetworkImage(
              'https://cf.bstatic.com/xdata/images/hotel/270x200/183065428.jpg?k=200c1c4af29ec5f9afee3b6b673162ab1aa24ac29c1bcf6e7e80a4c220db0029&o='),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
