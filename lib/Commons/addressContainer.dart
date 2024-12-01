import 'package:flutter/material.dart';

Widget addressCard(context, String place, String address) {
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
      border: Border(),
    ),
    padding: EdgeInsets.symmetric(vertical: 15),
    margin: EdgeInsets.symmetric(horizontal: 15),
    child: Row(
      children: [
        const Icon(
          Icons.access_time_filled_outlined,
          size: 35,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                place,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                address,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
