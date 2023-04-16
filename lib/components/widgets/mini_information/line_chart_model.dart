import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'mini_information.dart';

enum ChartAccent { BLUE, ORANGE, WHITE, RED, GREEN }

class LineChartBank {
  static LineChartWidget blue() {
    return const LineChartWidget(colors: [
      Color(0xff23b6e6),
      Color(0xff02d39a),
    ], spotsData: [
      FlSpot(
        1,
        2,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]);
  }

  static LineChartWidget orange() {
    return const LineChartWidget(colors: [
      Color(0xfff12711),
      Color(0xfff5af19),
    ], spotsData: [
      FlSpot(
        1,
        1.3,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        4,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        3,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]);
  }

  static LineChartWidget slate() {
    return const LineChartWidget(colors: [
      Color(0xff2980B9),
      Color(0xff6DD5FA)
    ], spotsData: [
      FlSpot(
        1,
        1.3,
      ),
      FlSpot(
        2,
        5,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        6,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1,
      )
    ]);
  }

  static LineChartWidget red() {
    return const LineChartWidget(colors: [
      Color(0xff93291E),
      Color(0xffED213A)
    ], spotsData: [
      FlSpot(
        1,
        3,
      ),
      FlSpot(
        2,
        4,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]);
  }

  static LineChartWidget green() {
    return const LineChartWidget(colors: [
      Color(0xff0575E6),
      Color(0xff00F260)
    ], spotsData: [
      FlSpot(
        1,
        1.3,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]);
  }
}
