import 'package:flutter/material.dart';
import 'package:vost/presentation/utils/misc.dart';
import 'package:vost/presentation/utils/constants.dart' as Constants;

class OnSiteHelpWidget extends StatelessWidget {

  final DateTime _lastUpdated;
  final int _humanMeans;
  final int _landMeans;
  final int _aerialMeans;

  const OnSiteHelpWidget(this._lastUpdated, this._humanMeans, this._landMeans, this._aerialMeans);

  String getCorrectMeansFormat(int means) {
    return means != null ? means.toString() : Constants.EMPTY_DATE_STRING;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: new Container (
        padding: new EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
            color: Colors.white,
            boxShadow: [new BoxShadow(
              color: Colors.black,
              blurRadius: 20.0,
            )]
        ),
        child: new Column(
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Container(
                          child: new Row(
                            children: <Widget>[
                              Image.asset('assets/images/vost_logo_white.png',
                                width: 50,
                                height: 50,
                              ),
                              new Container(
                                  child: Text(
                                    getCorrectMeansFormat(this._humanMeans),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: new Text(
                            "Humanos".toUpperCase(),
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                        ),
                      ]
                  ),
                  new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Container(
                          child: new Row(
                            children: <Widget>[
                              Image.asset('assets/images/vost_logo_white.png',
                                width: 50,
                                height: 50,
                              ),
                              new Container(
                                  child: Text(
                                    getCorrectMeansFormat(this._landMeans),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: new Text(
                            "Terrestes".toUpperCase(),
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ]
                  ),
                  new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Container(
                          child: new Row(
                            children: <Widget>[
                              Image.asset('assets/images/vost_logo_white.png',
                                width: 50,
                                height: 50,
                              ),
                              new Container(
                                  child: Text(
                                    getCorrectMeansFormat(this._aerialMeans),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: new Text(
                            "Aereos".toUpperCase(),
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ]
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      "Ultima atualização : " +  getFormattedDate(this._lastUpdated, Constants.FORMAT_DATE_FULL),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }

}