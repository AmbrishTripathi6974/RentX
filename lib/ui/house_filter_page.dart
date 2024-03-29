import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/ui/house_rental_app.dart';
import 'package:flutter_application_2/ui/price_range_slider_widget.dart';
import 'package:flutter_application_2/ui/area_range_slider_widget.dart';
import 'package:flutter_application_2/provider/house_filter_provider.dart';
import 'package:flutter_application_2/provider/house_filter_area_provider.dart';
import 'package:provider/provider.dart';

import '../provider/house_filter_area_provider.dart';
import 'area_range_slider_widget.dart';

class HouseFilterPage extends StatelessWidget {
  HouseFilterPage({Key? key}) : super(key: key);

  ValueNotifier<int> selectedRooms = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.clear),
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            "Filter",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Text("Price Monthly"),
                          const Spacer(),
                          Consumer<HouseFilterProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$${value.priceMin}",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "-",
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Consumer<HouseFilterProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$${value.priceMax}",
                                    style: const TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    PriceRangeSliderWidget(),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Rooms"),
                          const SizedBox(
                            height: 16,
                          ),
                          ValueListenableBuilder<int>(
                              valueListenable: selectedRooms,
                              builder: ((context, value, child) {
                                return Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          selectedRooms.value = 0;
                                        },
                                        child: AnimatedContainer(
                                          decoration: BoxDecoration(
                                            color: value == 0
                                                ? Colors.blue
                                                : Colors.white,
                                            border: Border.all(
                                              color: Colors.grey[400]!,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          duration: Duration(milliseconds: 250),
                                          child: const Text("3"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          selectedRooms.value = 1;
                                        },
                                        child: AnimatedContainer(
                                          decoration: BoxDecoration(
                                            color: value == 1
                                                ? Colors.blue
                                                : Colors.white,
                                            border: Border.all(
                                              color: Colors.grey[400]!,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          duration: Duration(milliseconds: 250),
                                          child: const Text("4"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          selectedRooms.value = 2;
                                        },
                                        child: AnimatedContainer(
                                          decoration: BoxDecoration(
                                            color: value == 2
                                                ? Colors.blue
                                                : Colors.white,
                                            border: Border.all(
                                              color: Colors.grey[400]!,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          duration: Duration(milliseconds: 250),
                                          child: const Text("5"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          selectedRooms.value = 3;
                                        },
                                        child: AnimatedContainer(
                                          decoration: BoxDecoration(
                                            color: value == 3
                                                ? Colors.blue
                                                : Colors.white,
                                            border: Border.all(
                                              color: Colors.grey[400]!,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          duration: Duration(milliseconds: 250),
                                          child: const Text("6"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          selectedRooms.value = 4;
                                        },
                                        child: AnimatedContainer(
                                          decoration: BoxDecoration(
                                            color: value == 4
                                                ? Colors.blue
                                                : Colors.white,
                                            border: Border.all(
                                              color: Colors.grey[400]!,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          duration: Duration(milliseconds: 250),
                                          child: const Text("7+"),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              })),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Text("Area"),
                          const Spacer(),
                          Consumer<HouseFilterAreaProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$${value.areaMin}",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "-",
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Consumer<HouseFilterAreaProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$${value.areaMax}",
                                    style: const TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    AreaRangeSliderWidget(),
                  ],
                ),
              ),
              flex: 10,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text(
                      "Show Me",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
