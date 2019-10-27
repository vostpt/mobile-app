import 'package:flutter/material.dart';
import 'package:vost/presentation/utils/misc.dart';
import 'package:vost/constants.dart' as Constants;

class OccurrencesTimeWidget extends StatelessWidget {

  final DateTime _startTime;
  final DateTime _endTime;
  final DateTime _lastUpdated;

  const OccurrencesTimeWidget(this._startTime, this._endTime, this._lastUpdated);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: new Container (
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0,
                  )],
                ),
                child:
                    new Column(
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Container(
                                  child: new Text(
                                    "Início",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                new Container(
                                  child: new Text(
                                    getFormattedDate(this._startTime, Constants.FORMAT_DATE_HOUR),
                                    style: TextStyle(
                                      color: Colors.lightGreen[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                new Container(
                                  child: new Text(
                                    getFormattedDate(this._startTime, Constants.FORMAT_DATE_DAY),
                                    style: TextStyle(
                                      color: Colors.lightGreen[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            new Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Container(
                                  child: new Text(
                                    "Fim",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                new Container(
                                  child: new Text(
                                    getFormattedDate(this._endTime, Constants.FORMAT_DATE_HOUR),
                                    style: TextStyle(
                                      color: Colors.lightGreen[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                new Container(
                                  child: new Text(
                                    getFormattedDate(this._endTime, Constants.FORMAT_DATE_DAY),
                                    style: TextStyle(
                                      color: Colors.lightGreen[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Container(
                              child: new Text(
                                "Ultima atualização : " + getFormattedDate(this._lastUpdated, Constants.FORMAT_DATE_FULL),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
    );

  }

}