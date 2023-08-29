import 'package:flutter/material.dart';
import 'package:learner_app/ui/widgets/donuts_card.dart';
import 'package:learner_app/ui/widgets/offer_card.dart';
import 'package:learner_app/utils/constants.dart';

import 'home-screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF7074)),
        fontFamily: 'Poppins',
        useMaterial3: false,
      ),
      home: const HomePageState(),
    );
  }
}

class HomePageState extends StatefulWidget {
  const HomePageState({super.key});

  @override
  State<HomePageState> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    appBar ??= normalAppBar();
    if (!(_setSelectedItemIndex == 0)) {
      appBar = AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          ' Your favourite donuts is here',
          style: TextStyle(
            color: Constants.accentColor,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
      );
    } else {
      appBar = normalAppBar();
    }
    final pages = [

      Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xFFF2F2F2),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Order your favourite donuts from here.',
                    style: TextStyle(
                      color: Constants.fontColorBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 30, left: 15, right: 15, bottom: 25),
                  child: const Text(
                    'Today Offers',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 285,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (c, i) {
                        return OffersCard(offerItem: list[i]);
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 30, left: 15, right: 15, bottom: 25),
                  child: const Text(
                    'Donuts',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 159,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: donutsList.length,
                      itemBuilder: (c, i) {
                        return DonutsCard(
                          item: donutsList[i],
                        );
                      }),
                )
              ]),
        ),
      ),
      Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xFFF2F2F2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (c, i) {
                return Material(
                  color: Colors.transparent,
                  child: Container(
                    margin: const EdgeInsetsDirectional.symmetric(vertical: 5),
                    child: ListTile(
                      isThreeLine: true,
                      tileColor: Constants.primaryColor.withOpacity(0.3),
                      splashColor: Constants.primaryColor,
                      onTap: () {
                        print(list[i].donutName);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      leading:
                          Image.asset(list[i].imagePath, width: 50, height: 50),
                      subtitle: Text(
                        list[i].donutDescription,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                          color: Constants.fontColorBlack60,
                          letterSpacing: 0.12,
                        ),
                      ),
                      trailing: Text(
                        list[i].donutPrice.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Constants.accentColor),
                      ),
                      title: Text(list[i].donutName),
                    ),
                  ),
                );
              }),
        ),
      ),
    ];
    return Scaffold(
      appBar: appBar,
      body: pages[_setSelectedItemIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _setSelectedItem,
        elevation: 0,
        backgroundColor: const Color(0xFFF2F2F2),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Constants.accentColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "",
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
            tooltip: "Fav",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
            tooltip: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "",
            tooltip: "cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
            tooltip: "profile",
          ),
        ],
      ),
    );
  }

  int _setSelectedItemIndex = 0;

  void _setSelectedItem(int value) {
    setState(() {
      _setSelectedItemIndex = value;
    });
  }

  PreferredSizeWidget searchAppBar() => AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0.0,
        centerTitle: true,
        title: TextField(
          maxLines: 1,
          cursorColor: Constants.accentColor,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              hintText: 'Search here',
              hintStyle: const TextStyle(color: Colors.white),
              suffixIcon: InkWell(
                onHover: (i) {},
                onTap: () {
                  setState(() {
                    appBar = normalAppBar();
                  });
                },
                child: Ink(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Constants.accentColor,
                  ),
                ),
              ),
              filled: true,
              fillColor: Constants.primaryColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              )),
        ),
        actions: const [
          SizedBox(
            width: 30,
          )
        ],
      );

  PreferredSizeWidget normalAppBar() => AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Let’s Gonuts!',
          style: TextStyle(
            color: Constants.accentColor,
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
          textAlign: TextAlign.start,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              // onHover: (i) {},
              onTap: () {
                setState(() {
                  appBar = searchAppBar();
                });
              },
              child: Ink(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.search,
                  color: Constants.accentColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          )
        ],
      );
}
