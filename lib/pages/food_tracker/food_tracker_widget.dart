import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'food_tracker_model.dart';
export 'food_tracker_model.dart';

class FoodTrackerWidget extends StatefulWidget {
  const FoodTrackerWidget({Key? key}) : super(key: key);

  @override
  _FoodTrackerWidgetState createState() => _FoodTrackerWidgetState();
}

class _FoodTrackerWidgetState extends State<FoodTrackerWidget> {
  late FoodTrackerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodTrackerModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 40.0, 40.0, 40.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 60.0,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          NavBarPage(initialPage: 'homePage'),
                                    ),
                                  );
                                },
                              ),
                              Text(
                                'Meal Plan',
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 20.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    FlutterFlowCalendar(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      weekFormat: true,
                                      weekStartsMonday: false,
                                      onChange:
                                          (DateTimeRange? newSelectedDate) {
                                        setState(() =>
                                            _model.calendarSelectedDay =
                                                newSelectedDate);
                                      },
                                      titleStyle: TextStyle(),
                                      dayOfWeekStyle: TextStyle(),
                                      dateStyle: TextStyle(),
                                      selectedDateStyle: TextStyle(),
                                      inactiveDateStyle: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 20.0, 15.0, 20.0),
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: ExpandableNotifier(
                                      initialExpanded: false,
                                      child: ExpandablePanel(
                                        header: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                20.0),
                                                    child: Container(
                                                      width: 80.0,
                                                      height: 80.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/breakfast.png',
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 20.0, 0.0),
                                                  child: Text(
                                                    'Breakfast',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        collapsed: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        expanded: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue1 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue1 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Whole grain bread (bagels, muffins)',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue2 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue2 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Low fat frozen yogurt',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue3 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue3 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Fresh Fruit',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        theme: ExpandableThemeData(
                                          tapHeaderToExpand: false,
                                          tapBodyToExpand: true,
                                          tapBodyToCollapse: true,
                                          headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                          hasIcon: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 20.0, 15.0, 20.0),
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: ExpandableNotifier(
                                      initialExpanded: false,
                                      child: ExpandablePanel(
                                        header: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                20.0),
                                                    child: Container(
                                                      width: 80.0,
                                                      height: 80.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/lunch.png',
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 20.0, 0.0),
                                                  child: Text(
                                                    'Lunch',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        collapsed: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        expanded: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue4 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue4 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Steamed Seafood',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue5 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue5 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Broth based soup',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue6 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue6 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Salad',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        theme: ExpandableThemeData(
                                          tapHeaderToExpand: false,
                                          tapBodyToExpand: true,
                                          tapBodyToCollapse: true,
                                          headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                          hasIcon: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 20.0, 15.0, 20.0),
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: ExpandableNotifier(
                                      initialExpanded: false,
                                      child: ExpandablePanel(
                                        header: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                20.0),
                                                    child: Container(
                                                      width: 80.0,
                                                      height: 80.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/serving-dish.png',
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 20.0, 0.0),
                                                  child: Text(
                                                    'Dinner',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        collapsed: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        expanded: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue7 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue7 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    '3 to 4 oz of white poultry',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue8 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue8 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Boiled Fish',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue9 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue9 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Pasta with low-fat sauces',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        theme: ExpandableThemeData(
                                          tapHeaderToExpand: false,
                                          tapBodyToExpand: true,
                                          tapBodyToCollapse: true,
                                          headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                          hasIcon: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 20.0, 15.0, 20.0),
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: ExpandableNotifier(
                                      initialExpanded: false,
                                      child: ExpandablePanel(
                                        header: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                20.0),
                                                    child: Container(
                                                      width: 80.0,
                                                      height: 80.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/snack.png',
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 20.0, 0.0),
                                                  child: Text(
                                                    'Snacks',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        collapsed: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        expanded: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue10 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue10 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Sherbert',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue11 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue11 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Frozen Fruits',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue12 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue12 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Sorbet',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                ),
                                                child: CheckboxListTile(
                                                  value: _model
                                                          .checkboxListTileValue13 ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .checkboxListTileValue13 =
                                                        newValue!);
                                                  },
                                                  title: Text(
                                                    'Low Fat Frozen Yogurt',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                  subtitle: Text(
                                                    'Subtitle',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  tileColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        theme: ExpandableThemeData(
                                          tapHeaderToExpand: false,
                                          tapBodyToExpand: true,
                                          tapBodyToCollapse: true,
                                          headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                          hasIcon: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
