import 'package:flutter/material.dart';

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
                  color: Colors.grey,
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
                                new Text(
                                  "Início",
                                  overflow: TextOverflow.clip,
                                  style: DefaultTextStyle.of(context).style.apply(
                                      fontSizeFactor: 0.5,
                                      decoration: TextDecoration.none,
                                      color: Colors.grey
                                  ),
                                ),
                                new Text(
                                  this._startTime != null ? this._startTime.hour.toString() + ":" + this._startTime.minute.toString() : "--",
                                  overflow: TextOverflow.clip,
                                  style: DefaultTextStyle.of(context).style.apply(
                                      fontSizeFactor: 0.5,
                                      decoration: TextDecoration.none,
                                      color: Colors.lightGreen
                                  ),
                                ),
                                new Text(
                                  this._startTime != null ? this._startTime.day.toString() + "-" + this._startTime.month.toString() + "-" + this._startTime.year.toString() : "--",
                                  overflow: TextOverflow.clip,
                                  style: DefaultTextStyle.of(context).style.apply(
                                      fontSizeFactor: 0.5,
                                      decoration: TextDecoration.none,
                                      color: Colors.lightGreen
                                  ),
                                )
                              ],
                            ),
                            new Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text(
                                  "Fim",
                                  overflow: TextOverflow.clip,
                                  style: DefaultTextStyle.of(context).style.apply(
                                      fontSizeFactor: 0.5,
                                      decoration: TextDecoration.none,
                                      color: Colors.grey
                                  ),
                                ),
                                new Text(
                                  this._endTime != null ? this._endTime.hour.toString() + ":" + this._endTime.minute.toString() : "--",
                                  overflow: TextOverflow.clip,
                                  style: DefaultTextStyle.of(context).style.apply(
                                      fontSizeFactor: 0.5,
                                      decoration: TextDecoration.none,
                                      color: Colors.lightGreen
                                  ),
                                ),
                                new Text(
                                  this._endTime != null ? this._endTime.day.toString() + "-" + this._endTime.month.toString() + "-" + this._endTime.year.toString() : "--",
                                  overflow: TextOverflow.clip,
                                  style: DefaultTextStyle.of(context).style.apply(
                                      fontSizeFactor: 0.5,
                                      decoration: TextDecoration.none,
                                      color: Colors.lightGreen),
                                )
                              ],
                            ),
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Text(
                        this._lastUpdated != null ?
                              "Ultima atualização : " +
                                  this._lastUpdated.hour.toString() +
                                  ":" +
                                  this._lastUpdated.minute.toString() + " " +
                                  this._lastUpdated.day.toString() + "-" +
                                  this._lastUpdated.month.toString() + "-" +
                                  this._lastUpdated.year.toString() : "--",
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              style: DefaultTextStyle.of(context).style.apply(
                                  fontSizeFactor: 0.3,
                                  decoration: TextDecoration.none,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    )
                ),
    );

  }

}