// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/house.dart';
import 'package:flutter_application_2/pages/widgets/custom_drawer.dart';
import 'package:flutter_application_2/ui/house_filter_page.dart';
import 'package:flutter_application_2/ui/house_rental_app.dart';
import 'package:flutter_application_2/provider/house_filter_provider.dart';
import 'package:flutter_application_2/provider/house_filter_area_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  // final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(vsync: this, length: 3);

    return Scaffold(
      drawer: CustomDrawer(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Colors.blue,
                                  ),
                                  Text("Location"),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Ayodhya, Uttar Pradesh"),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                                content:
                                                    Text("Ayodhya, Uttar Pradesh, India"),
                                              ));
                                    },
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            child: Column(
                              children: [
                                Builder(
                                  builder: (context) {
                                    return IconButton(onPressed: (){
                                      Scaffold.of(context).openDrawer();
                                    },
                                     icon: Icon(Icons.menu));
                                  }
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const Expanded(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  icon: Icon(Icons.search),
                                  border: InputBorder.none,
                                ),
                              ),
                            )),
                            const SizedBox(
                              width: 16,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).pushNamed("/search/filter"),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                child: const Center(
                                  child:
                                      Icon(Icons.filter_alt_rounded, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 4,
              ),
              TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.transparent,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  Tab(
                    text: "Recommended",
                  ),
                  Tab(
                    text: "Nearest",
                  ),
                  Tab(
                    text: "Popular",
                  ),
                ],
                controller: _tabController,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                        itemCount: houseItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                4,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              right: 0,
                                              top: 0,
                                              bottom: 0,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      houseItems[index].img ??
                                                          "",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 16,
                                              right: 16,
                                              top: 16,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.star,
                                                          color: Colors.blue,
                                                        ),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text(houseItems[index]
                                                                .star ??
                                                            ""),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.favorite,
                                                          color:
                                                              Colors.blue[500],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "${houseItems[index].title}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "${houseItems[index].pricePerDay}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                              fontSize: 21,
                                            ),
                                          ),
                                          Text("/Day"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.blue,
                                          ),
                                          Text(
                                            "${houseItems[index].location}",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Icon(
                                            Icons.bed,
                                            color: Colors.blue,
                                          ),
                                          Text(
                                            "${houseItems[index].rooms}",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Icon(
                                            Icons.crop_square,
                                            color: Colors.blue,
                                          ),
                                          Text(
                                            "${houseItems[index].area}",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                    Container(
                      child: Center(
                        child: Text("2"),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("3"),
                      ),
                    ),
                  ],
                ),
                flex: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
