import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OccurrencesTimeWidget extends StatelessWidget {

  final DateTime _startTime;
  final DateTime _endTime;
  final DateTime _lastUpdated;

  const OccurrencesTimeWidget(this._startTime, this._endTime, this._lastUpdated);

  static const String EMPTY_DATE_STRING = "--";
  static const String FORMAT_DATE_DAY = "day";
  static const String FORMAT_DATE_HOUR = "hour";
  static const String FORMAT_DATE_FULL = "full";

  String getFormattedDate(DateTime date, String typeOfFormat) {
    String formattedDate = EMPTY_DATE_STRING;
    DateFormat formatter;

    if (date != null) {
      switch(typeOfFormat) {
        case 'full': {
          formatter = new DateFormat('HH:mm yyyy-MM-dd');
          break;
        }
        case 'day': {
          formatter = new DateFormat('yyyy-MM-dd');
          break;
        }
        case 'hour': {
          formatter = new DateFormat('HH:mm');
          break;
        }
        default: {

        }
      }

      formattedDate = formatter.format(date);
    }

    return formattedDate;
  }

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
                                    getFormattedDate(this._startTime, FORMAT_DATE_HOUR),
                                    style: TextStyle(
                                      color: Colors.lightGreen[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                new Container(
                                  child: new Text(
                                    getFormattedDate(this._startTime, FORMAT_DATE_DAY),
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
                                    getFormattedDate(this._endTime, FORMAT_DATE_HOUR),
                                    style: TextStyle(
                                      color: Colors.lightGreen[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                new Container(
                                  child: new Text(
                                    getFormattedDate(this._endTime, FORMAT_DATE_DAY),
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
                                "Ultima atualização : " + getFormattedDate(this._lastUpdated, FORMAT_DATE_FULL),
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