import 'package:flutter/material.dart';

class Survey extends StatefulWidget {
  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  late String respondentType;
  late String smartphoneUserType;
  List respondents = ["respondent 1", "respondent 2", "respondent 3"];
  List smaerphoneUsers = [
    "SmartPhone user 1",
    "SmartPhone user 2",
    "SmartPhone user 3"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Send",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Survey",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF18FFFF), width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton(
                  items: [
                    DropdownMenuItem(
                      value: "app",
                      child: Center(
                        child: Text("Respondent 1"),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "app",
                      child: Center(
                        child: Text("Respondent 2"),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "app",
                      child: Center(
                        child: Text("Respondent 3"),
                      ),
                    ),
                  ],
                  onChanged: (value) {},
                  isExpanded: true,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFF18FFFF),
                  ),
                  iconSize: 40,
                  underline: SizedBox(),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  hint: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Select respondent Type",
                      style: TextStyle(
                        color: Color(0xFF18FFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF18FFFF), width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton(
                  items: [
                    DropdownMenuItem(
                      value: "app",
                      child: Center(
                        child: Text("Smartphone user 1"),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "app",
                      child: Center(
                        child: Text("Smartphone user 2"),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "app",
                      child: Center(
                        child: Text("Smartphone user 3"),
                      ),
                    ),
                  ],
                  onChanged: (value) {},
                  isExpanded: true,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFF18FFFF),
                  ),
                  iconSize: 40,
                  underline: SizedBox(),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  hint: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Select smartphone user Type",
                      style: TextStyle(
                        color: Color(0xFF18FFFF),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
