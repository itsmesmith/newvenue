import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';

class Incomechart extends StatelessWidget {
  static const secondaryMeasureAxisId = 'secondaryMeasureAxisId';
  final List<Income> getincome;
  const Incomechart({Key? key, required this.getincome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Income, String>> series = [
      new charts.Series(seriesColor: charts.ColorUtil.fromDartColor(Color(0xFFD4D0C1)), id: "Normal Bookings", data: getincome, domainFn: (Income series, _) => series.month!, measureFn: (Income series, _) => series.market!)..setAttribute(charts.measureAxisIdKey, secondaryMeasureAxisId),
      new charts.Series(seriesColor: charts.ColorUtil.fromDartColor(Color(0xFF42A591)), id: "Regular Bookings", data: getincome, domainFn: (Income series, _) => series.month!, measureFn: (Income series, _) => series.yourincome!)..setAttribute(charts.measureAxisIdKey, secondaryMeasureAxisId),
    ];
    return charts.BarChart(
      series,
      animate: true,
      defaultRenderer: new charts.BarRendererConfig(cornerStrategy: const charts.ConstCornerStrategy(30), groupingType: charts.BarGroupingType.grouped, maxBarWidthPx: 10),
    );
  }
}

class Income {
  String? month;
  double? market;
  double? yourincome;
  Income({this.month, this.market, this.yourincome});
}
