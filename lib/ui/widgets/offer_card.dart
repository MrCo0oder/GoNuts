import 'package:flutter/material.dart';
import 'package:learner_app/models/offers_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/constants.dart';

class OffersCard extends StatefulWidget {
  OfferItem offerItem;

  OffersCard({super.key, required this.offerItem});

  @override
  State<OffersCard> createState() => _OffersCardState();
}

class _OffersCardState extends State<OffersCard> {
  @override
  Widget build(BuildContext context) {
    return item(widget.offerItem);
  }

  Widget item(OfferItem offerItem) {
    return Stack(alignment: Alignment.topRight, children: [
      Row(
        children: [
          Container(
            height: 253,
            width: 150,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: offerItem.cardColor,
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17)),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          widget.offerItem.isLiked = !widget.offerItem.isLiked;
                        });
                      },
                      child: offerItem.isLiked == true
                          ? Icon(
                              Icons.favorite,
                              color: Constants.accentColor,
                            )
                          : Icon(
                              Icons.favorite_border_outlined,
                              color: Constants.accentColor,
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          offerItem.donutName,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            offerItem.donutDescription,
                            textAlign: TextAlign.justify,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                letterSpacing: 0.3),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '£${widget.offerItem.donutPrice}',
                                style: TextStyle(
                                    color: Constants.fontColorBlack,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              Text(
                                ' £${widget.offerItem.offer}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30),
        // child: Image.network(
        //   "https://robohash.org/$text",
        //   width: 100,
        //   height: 100,
        //   fit: BoxFit.contain,
        // )
        child: Image.asset(
          offerItem.imagePath,
          fit: BoxFit.contain,
          height: 100,
          width: 100,
        ),
      )
    ]);
  }

}
