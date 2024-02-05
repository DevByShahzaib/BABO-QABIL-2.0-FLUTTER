import 'package:flutter/material.dart';
import 'package:chess_vectors_flutter/chess_vectors_flutter.dart';

class ChessGame extends StatefulWidget {
  const ChessGame({super.key});

  @override
  State<ChessGame> createState() => _ChessGameState();
}

class _ChessGameState extends State<ChessGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text('Chess Game'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Center(
                    child: Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                        child: Container(
                          color: Colors.black,
                          height: MediaQuery.of(context).size.height * 0.39,
                          width: MediaQuery.of(context).size.width * 0.77,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '1',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    Text(
                                      '3',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    Text(
                                      '4',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    Text(
                                      '5',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                      5, (int index) => rowWidget(index + 1))),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget boxWidget({required Color color, required Color iconColor, rowNumber}) {
  return Container(
      height: 55, width: 55, color: color, child: icon(rowNumber, iconColor));
}

dynamic icon(int rowNumber, Color iconColor) {
  if (rowNumber != 3) {
    if (rowNumber % 2 == 0) {
      return WhitePawn(
        fillColor: iconColor,
      );
    } else {
      return WhiteBishop(
        fillColor: iconColor,
      );
    }
  } else {
    return WhiteRook(
      fillColor: iconColor,
    );
  }
}

Row rowWidget(int rowNumber) {
  if (rowNumber % 3 == 0) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        boxWidget(
            color: Colors.white, iconColor: Colors.black, rowNumber: rowNumber),
        boxWidget(
            color: Colors.black, iconColor: Colors.white, rowNumber: rowNumber),
        boxWidget(
            color: Colors.white, iconColor: Colors.black, rowNumber: rowNumber),
        boxWidget(
            color: Colors.black, iconColor: Colors.white, rowNumber: rowNumber),
        boxWidget(
            color: Colors.white, iconColor: Colors.black, rowNumber: rowNumber),
      ],
    );
  } else {
    if (rowNumber % 2 == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boxWidget(
              color: Colors.black,
              iconColor: Colors.white,
              rowNumber: rowNumber),
          boxWidget(
              color: Colors.white,
              iconColor: Colors.black,
              rowNumber: rowNumber),
          boxWidget(
              color: Colors.black,
              iconColor: Colors.white,
              rowNumber: rowNumber),
          boxWidget(
              color: Colors.white,
              iconColor: Colors.black,
              rowNumber: rowNumber),
          boxWidget(
              color: Colors.black,
              iconColor: Colors.white,
              rowNumber: rowNumber),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boxWidget(
              color: Colors.white,
              iconColor: Colors.black,
              rowNumber: rowNumber),
          boxWidget(
              color: Colors.black,
              iconColor: Colors.white,
              rowNumber: rowNumber),
          boxWidget(
              color: Colors.white,
              iconColor: Colors.black,
              rowNumber: rowNumber),
          boxWidget(
              color: Colors.black,
              iconColor: Colors.white,
              rowNumber: rowNumber),
          boxWidget(
              color: Colors.white,
              iconColor: Colors.black,
              rowNumber: rowNumber),
        ],
      );
    }
  }
}
