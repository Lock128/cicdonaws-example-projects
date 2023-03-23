import 'dart:convert';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matchcenterui/widgets/match.dart';

import '../models/PaginatedMatches.dart';
import '../models/Match.dart';
import '../models/Team.dart';
import '../widgets/team.dart';

class ViewTeams extends StatefulWidget {
  @override
  _ViewTeamsState createState() => _ViewTeamsState();
}

class _ViewTeamsState extends State<ViewTeams> {
  bool finishedLoading = false;
  List<Widget> _teamsWidgetList = [Text("Loading...")];
  @override
  Widget build(BuildContext context) {
    if (!finishedLoading) {
      var futures = <Future>[];
      futures.add(_getMatchesByCountry("DE"));
      futures.add(_getMatchesByCountry("IT"));
      Future.wait(futures).then((value) {
        List<TeamWidget> matchesWidgetList = [];
        value.forEach((element) {
          matchesWidgetList.addAll(element);
        });
        finishedLoading = true;
        this.setState(() {
          _teamsWidgetList = matchesWidgetList;
        });
      });
    }

    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
          margin: EdgeInsets.only(top: 24),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(margin: EdgeInsets.all(5), child: Icon(Icons.event)),
            Text(
              "Teams",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ])),
      Text("Here we will show available teams..."),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: _teamsWidgetList)
    ]);
  }

  @override
  void initState() {
    super.initState();
  }

  Future<List<TeamWidget>> _getMatchesByCountry(String country) async {
    List<TeamWidget> teamsWidgetList = [];
    try {
      String graphQLDocument = '''query ListTeams {
        getTeamsByCountry(country: "${country}") {
            nextToken
            teams {
              PK
              PrimaryColor
              SK
              SecondaryColor
              TeamName
            }
          }
        }''';

      var operation = Amplify.API
          .query(request: GraphQLRequest<String>(document: graphQLDocument));

      var response = await operation.response;
      var data = response.data;
      if (data != null) {
        Map<String, dynamic> userMap = jsonDecode(data);
        List<dynamic> matches = userMap["getTeamsByCountry"]["teams"];
        matches.forEach((element) {
          if (element != null) {
            if (element["id"] == null) {
              element["id"] = "rnd-id";
            }
            var match = Team.fromJson(element);
            teamsWidgetList.add(TeamWidget(match));
          }
        });
      }
    } on ApiException catch (e) {
      print('Query failed: $e');
    }

    return teamsWidgetList;
  }

  Future<List<Match?>> _availableCountries() async {
    try {
      String graphQLDocument = '''query ScanAllDates {
        getAvailableDates() {            
            matches {
              AwayTeamId
              AwayTeamName
              Date
              HomeTeamId
              HomeTeamName
              Matchday
              PK
              SK
              Season
            }
          }
        }''';

      var operation = Amplify.API
          .query(request: GraphQLRequest<String>(document: graphQLDocument));

      var response = await operation.response;
      var data = response.data;
      if (data != null) {
        Map<String, dynamic> userMap = jsonDecode(data);
        print('Query result: ' + data.toString());
        var paginatedMatches = PaginatedMatches.fromJson(userMap);
        print('paginatedMatches: ' + paginatedMatches.toString());
        //data?.forEach((element) {});
      }
    } on ApiException catch (e) {
      print('Query failed: $e');
    }

    return <Match?>[];
  }
}
