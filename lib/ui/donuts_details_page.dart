import 'package:flutter/material.dart';
import 'package:learner_app/models/donuts_item.dart';
import 'package:learner_app/utils/constants.dart';

class DonutsDetailsPage extends StatefulWidget {
  DonutsItem item;

  DonutsDetailsPage({super.key, required this.item});

  @override
  State<DonutsDetailsPage> createState() => _DonutsDetailsPageState();
}

class _DonutsDetailsPageState extends State<DonutsDetailsPage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Constants.accentColor,
          ),
        ),
        backgroundColor: Constants.primaryColor,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Constants.primaryColor,
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Image.asset(
                  widget.item.imagePath,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 35),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  widget.item.donutName,
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Constants.accentColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 33,
                                ),
                                const Text(
                                  "About Gonut",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  widget.item.donutDescription,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    letterSpacing: 0.7,
                                    fontStyle: FontStyle.normal,
                                    color: Constants.fontColorBlack60,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Quantity",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      child: Material(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15)),
                                        elevation: 0.5,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _decrease();
                                            });
                                          },
                                          child:
                                          const Icon(Icons.remove_rounded),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                        width: 45,
                                        height: 45,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        child: Material(
                                          elevation: 0.5,
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                          child: Center(
                                            child: Text(count.toString(),
                                                style: const TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      child: Material(
                                        color: Colors.black,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15)),
                                        elevation: 0.5,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _increase();
                                            });
                                          },
                                          onLongPress: () {},
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 47,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "£${count * widget.item.donutPrice}",
                                          style: const TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                            Constants.accentColor,
                                            shadowColor: Colors.black26,
                                            foregroundColor:
                                            const Color(0x5FFED8DF),
                                            enableFeedback: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    50)),
                                            minimumSize: const Size(200, 67),
                                            elevation: 0,
                                          ),
                                          child: const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Add to Cart',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 14,
                                              ),
                                              Icon(
                                                Icons.shopping_bag,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        margin: const EdgeInsets.symmetric(horizontal: 33),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Material(
                          color: Colors.white,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(15)),
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                widget.item.isLiked = !widget.item.isLiked;
                              });
                            },
                            child: widget.item.isLiked == true
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
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _increase() {
    if (count < 25) count++;
  }

  void _decrease() {
    if (count > 1) count--;
  }

// setData(String id) async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   if (!sharedPreferences.containsKey("WISH_LIST")) {
//     sharedPreferences.setStringList("WISH_LIST", [id]);
//   } else {
//     sharedPreferences.getStringList("WISH_LIST")?.add(id);
//     sharedPreferences.setStringList(
//         "WISH_LIST", sharedPreferences.getStringList("WISH_LIST")!);
//   }
// }
}
