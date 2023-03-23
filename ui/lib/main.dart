import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:matchcenterui/views/view_collaborators.dart';
import 'package:matchcenterui/views/view_matchday.dart';
import 'package:matchcenterui/views/view_teams.dart';
import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
          '👋 Welcome to Match-Center - the best in class matchday experience',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
          title:
              '👋 Welcome to Match-Center - the best in class matchday experience'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _incrementCounter() {
    queryListItems().then((value) {
      print(value);
    });
    /*queryListItemsModel().then((value) {
      print(value);
    });*/
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.event),
                ),
                Tab(
                  icon: Icon(Icons.groups),
                ),
                Tab(
                  icon: Icon(Icons.info),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: ViewMatchday(),
              ),
              Center(
                child: ViewTeams(),
              ),
              Center(
                child: ViewCollaborators(),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }

  Future<void> _configureAmplify() async {
    /*config  = {
      aws_appsync_region: 'us-east-1', // (optional) - AWS AppSync region
      aws_appsync_graphqlEndpoint:
      'https://<app-id>.appsync-api.<region>.amazonaws.com/graphql', // (optional) - AWS AppSync endpoint
      aws_appsync_authenticationType: 'AMAZON_COGNITO_USER_POOLS', // (optional) - Primary AWS AppSync authentication type
      graphql_endpoint: 'https://www.yourdomain.com/graphql', // (optional) - Custom GraphQL endpoint
      aws_appsync_apiKey: 'da2-xxxxxxxxxxxxxxxxxxxxxxxxxx', // (optional) - AWS AppSync API Key
      graphql_endpoint_iam_region: 'us-east-1' // (optional) - Custom IAM region
    });*/

    final api = AmplifyAPI(modelProvider: ModelProvider.instance);
    await Amplify.addPlugin(api);
    await Amplify.configure(amplifyconfig);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint(
          'Tried to reconfigure Amplify; this can occur when your app restarts on Android.');
    }
  }

  Future<List<Match?>> queryListItems() async {
    try {
      String graphQLDocument = '''query ListMatches {
        getMatchesByDate(date: "08-18") {
            nextToken
            matches {
              PK
              SK
              Matchday
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
        //var paginatedMatches = PaginatedMatches.fromJson(userMap);
        //print('paginatedMatches: ' + paginatedMatches.toString());
        //data?.forEach((element) {});
      }
    } on ApiException catch (e) {
      print('Query failed: $e');
    }

    return <Match?>[];
  }

  Future<List<Match?>> queryListItemsModel() async {
    try {
      final request = ModelQueries.list(Match.classType,
          where: Match.PARTITIONKEY.eq("08-18"));
      final response = await Amplify.API.query(request: request).response;

      final todos = response.data?.items;
      if (todos == null) {
        print('errors: ${response.errors}');
        return <Match?>[];
      }
      return todos;
    } on ApiException catch (e) {
      print('Query failed: $e');
    }
    return <Match?>[];
  }
}
