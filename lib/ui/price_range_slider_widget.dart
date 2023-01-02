import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_2/provider/house_filter_provider.dart';

class PriceRangeSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hfProvider = Provider.of<HouseFilterProvider>(context);
    return RangeSlider(
      values: hfProvider.priceRangeValues,
      onChanged: (rv) {
        hfProvider.setPriceRangeValues(rv);
      },
      min: 0,
      max: 5000,
    );
  }
}
