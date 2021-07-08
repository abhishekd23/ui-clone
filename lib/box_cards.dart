import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BoxCards extends StatelessWidget {
  const BoxCards(
      {required this.percent,
      required this.title,
      required this.progress,
      required this.colour});

  final int? percent;
  final String? title;
  final String? progress;
  final Color? colour;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 250.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: colour,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10.0,
                animation: true,
                percent: percent! / 100,
                center: Text(
                  percent!.toString() + "%",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                backgroundColor: colour!,
                circularStrokeCap: CircularStrokeCap.square,
                progressColor: Colors.white,
              ),
              Text(
                "$title",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              Text(
                "$progress",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
