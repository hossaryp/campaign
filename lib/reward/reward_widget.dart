import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardWidget extends StatefulWidget {
  const RewardWidget({Key? key}) : super(key: key);

  @override
  _RewardWidgetState createState() => _RewardWidgetState();
}

class _RewardWidgetState extends State<RewardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Reward',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              height: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/backgroundpic.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/mypendapp.appspot.com/o/background.gif?alt=media&token=bfbefa29-6cf6-48db-8ddf-a01848f0a361',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 130, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 2, 0, 0),
                                  child: Stack(
                                    children: [
                                      if (valueOrDefault(
                                                  currentUserDocument?.gate,
                                                  '') ==
                                              null ||
                                          valueOrDefault(
                                                  currentUserDocument?.gate,
                                                  '') ==
                                              '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0, -0.55),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: AuthUserStreamWidget(
                                              child: Container(
                                                width: 200,
                                                height: 220,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xBFFF6A83),
                                                      Color(0x8C0E343B),
                                                      Color(0xC0BD6C46)
                                                    ],
                                                    stops: [0, 0, 1],
                                                    begin: AlignmentDirectional(
                                                        0, 1),
                                                    end: AlignmentDirectional(
                                                        0, -1),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 20,
                                                                    0, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            final usersUpdateData =
                                                                createUsersRecordData(
                                                              gate: FFAppState()
                                                                  .gate,
                                                            );
                                                            await currentUserReference!
                                                                .update(
                                                                    usersUpdateData);
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        1000));
                                                            if (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.gate,
                                                                        '') !=
                                                                    null &&
                                                                valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.gate,
                                                                        '') !=
                                                                    '') {
                                                              context.pushNamed(
                                                                'claimnft',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                  ),
                                                                },
                                                              );
                                                            } else {
                                                              context.pushNamed(
                                                                'Intro',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                  ),
                                                                },
                                                              );
                                                            }
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0),
                                                              topLeft: Radius
                                                                  .circular(10),
                                                              topRight: Radius
                                                                  .circular(10),
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/clam_your_NFT.gif',
                                                              width: 180,
                                                              height: 180,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                                  currentUserDocument?.gate,
                                                  '') !=
                                              null &&
                                          valueOrDefault(
                                                  currentUserDocument?.gate,
                                                  '') !=
                                              '')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0, -0.55),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: AuthUserStreamWidget(
                                              child: Container(
                                                width: 200,
                                                height: 300,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xBFFF6A83),
                                                      Color(0x8C0E343B),
                                                      Color(0xC0BD6C46)
                                                    ],
                                                    stops: [0, 0, 1],
                                                    begin: AlignmentDirectional(
                                                        0, 1),
                                                    end: AlignmentDirectional(
                                                        0, -1),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 20,
                                                                    0, 0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.gateUrl,
                                                                ''),
                                                            width: 180,
                                                            height: 180,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -0.75, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      10, 0, 0),
                                                          child: Text(
                                                            'Your Gate\nTo The Metaverse',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -0.8, 0),
                                                        child: Text(
                                                          ' ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                        ),
                                                      ),
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
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 75,
                              height: 500,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xBFFF6A83),
                                    Color(0x8C0E343B),
                                    Color(0xC0BD6C46)
                                  ],
                                  stops: [0, 0, 1],
                                  begin: AlignmentDirectional(0, 1),
                                  end: AlignmentDirectional(0, -1),
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 40,
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              context.pushNamed(
                                                'gates',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            },
                                            child: Icon(
                                              Icons.image_search_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              size: 40,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              GoRouter.of(context)
                                                  .prepareAuthEvent();
                                              await signOut();
                                              context.goNamedAuth(
                                                  'oo', mounted);
                                            },
                                            child: Icon(
                                              Icons.logout,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              size: 40,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (valueOrDefault(
                                              currentUserDocument?.gate, '') !=
                                          null &&
                                      valueOrDefault(
                                              currentUserDocument?.gate, '') !=
                                          '')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: AuthUserStreamWidget(
                                        child: InkWell(
                                          onTap: () async {
                                            await launchURL(
                                                'https://alethea.ai/inft/DogePound/1769');
                                          },
                                          child: Image.asset(
                                            'assets/images/Profile-Live-[remix].gif',
                                            width: 70,
                                            height: 70,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 75, 0),
                          child: Text(
                            'My Gate',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 35,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
