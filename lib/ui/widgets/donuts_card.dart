import 'package:flutter/material.dart';
import 'package:learner_app/models/donuts_item.dart';
import 'package:learner_app/ui/donuts_details_page.dart';

import '../../utils/constants.dart';

class DonutsCard extends StatefulWidget {
  final DonutsItem item;

  const DonutsCard({super.key, required this.item});

  @override
  State<DonutsCard> createState() => _DonutsCardState();
}

class _DonutsCardState extends State<DonutsCard> {
  @override
  Widget build(BuildContext context) {
    return item(widget.item);
  }

  Widget item(DonutsItem item) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Material(
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DonutsDetailsPage(
                                item: item,
                              )),
                    );
                  },
                  onHover: (i) {},
                  splashColor: Theme.of(context).primaryColorLight,
                  child: Ink(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                        bottom: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  item.donutName,
                                  style: TextStyle(
                                    color: Constants.fontColorBlack60,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Text(
                                '£${item.donutPrice}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  color: Constants.accentColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              item.imagePath,
              fit: BoxFit.contain,
              height: 110,
              width: 110,
            ),
          ],
        ),
      ),
    );
  }
}
