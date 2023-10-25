import 'package:flutter/material.dart';
 
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../style/textstyle.dart';

class RateTripPage extends StatefulWidget {
  const RateTripPage({super.key});

  @override
  State<RateTripPage> createState() => _RateTripPageState();
}

class _RateTripPageState extends State<RateTripPage> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(143, 0, 255, 1),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 27),
              height: MediaQuery.of(context).size.height * 0.11,
              color: Colors.transparent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.close_rounded,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Rate Your Trip',
                    style: appTextStyle(
                        fw: FontWeight.w600, size: 18, color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36, vertical: 10),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        leading: const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.deepOrange,
                          child: Text('A'),
                        ),
                        title: Text(
                          'Ben Stokes',
                          style: appTextStyle(
                              fw: FontWeight.w500,
                              size: 16,
                              color: Colors.black),
                        ),
                        subtitle: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color.fromRGBO(255, 204, 0, 1),
                            ),
                            Text(
                              '4.9',
                              style: appTextStyle(
                                  fw: FontWeight.w400,
                                  size: 14,
                                  color:
                                      const Color.fromRGBO(200, 199, 204, 1)),
                            ),
                          ],
                        ),
                        trailing: const 
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromRGBO(143, 0, 255, 1),
                          child: Icon(
                            Icons.message_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 36,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'How is your Trip',
                            style: appTextStyle(
                                fw: FontWeight.w600,
                                size: 18,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  color:
                                      const Color.fromRGBO(237, 237, 237, 1)),
                              child: TextFormField(
                                maxLines: 4,
                                // Align the label at the top.
                                decoration: InputDecoration(
                                  hintText: 'write your feedback',
                                  hintStyle: appTextStyle(
                                    fw: FontWeight.w400,
                                    size: 14,
                                    color:
                                        const Color.fromRGBO(101, 101, 101, 1),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(left: 15, top: 10),
                                  border: InputBorder.none,
                                ),
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36, vertical: 10),
                      child: Text(
                        'Trip Detail',
                        style: appTextStyle(
                            fw: FontWeight.w600, size: 18, color: Colors.black),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(237, 237, 237, 1),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: 
                      
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor:
                                      Color.fromRGBO(143, 0, 255, 1),
                                  child: Icon(Icons.circle,
                                      size: 18, color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Skate Park',
                                  style: appTextStyle(
                                      fw: FontWeight.w500,
                                      size: 14,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor:
                                      Color.fromRGBO(143, 0, 255, 1),
                                  child: Icon(Icons.location_on,
                                      size: 18, color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Home',
                                  style: appTextStyle(
                                      fw: FontWeight.w500,
                                      size: 14,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36, vertical: 10),
                      child: Text(
                        'Payment Detail',
                        style: appTextStyle(
                            fw: FontWeight.bold, size: 18, color: Colors.black),
                      ),
                    ),
                    Column(
                      children: [
                        buildPaymentDetailCont(
                            subtitle: '9.00', title: 'Trip Expense'),
                        buildPaymentDetailCont(
                            subtitle: '1.00', title: 'Discount Voucher'),
                        buildPaymentDetailCont(
                            subtitle: '20,00', title: 'Total'),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 36),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black),
                      child: Center(
                        child: Text(
                          'Submit',
                          style: appTextStyle(
                              fw: FontWeight.w400,
                              size: 16,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildPaymentDetailCont({required String title, required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: appTextStyle(
                fw: FontWeight.w400, size: 14, color: Colors.black),
          ),
          Text(
            '\$ $subtitle',
            style: appTextStyle(
                fw: FontWeight.w400, size: 14, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
