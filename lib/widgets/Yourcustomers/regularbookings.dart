import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegularBookings extends StatelessWidget {
  static const secondaryMeasureAxisId = 'secondaryMeasureAxisId';
  final List<Bookings> getbookingslist;
  const RegularBookings({Key? key, required this.getbookingslist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Bookings, String>> series = [
      new charts.Series(seriesColor: charts.ColorUtil.fromDartColor(Color(0xFFD4D0C1)), id: "Normal Bookings", data: getbookingslist, domainFn: (Bookings series, _) => series.month!, measureFn: (Bookings series, _) => series.normalbookings!)..setAttribute(charts.measureAxisIdKey, secondaryMeasureAxisId),
      new charts.Series(seriesColor: charts.ColorUtil.fromDartColor(Color(0xFF42A591)), id: "Regular Bookings", data: getbookingslist, domainFn: (Bookings series, _) => series.month!, measureFn: (Bookings series, _) => series.regularbookings!)..setAttribute(charts.measureAxisIdKey, secondaryMeasureAxisId),
    ];
    return charts.BarChart(
      series,
      animate: true,
      defaultRenderer: new charts.BarRendererConfig(cornerStrategy: const charts.ConstCornerStrategy(30), groupingType: charts.BarGroupingType.stacked, maxBarWidthPx: 10),
    );
  }
}

class Bookings {
  final String? month;
  final double? regularbookings;
  final double? normalbookings;
  Bookings({@required this.month, @required this.regularbookings, @required this.normalbookings});
}
