import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

class OoWidget extends StatefulWidget {
  const OoWidget({Key? key}) : super(key: key);

  @override
  _OoWidgetState createState() => _OoWidgetState();
}

class _OoWidgetState extends State<OoWidget> with TickerProviderStateMixin {
  AudioPlayer? soundPlayer;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 13000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0.48,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 2000,
      delay: 1000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 2000,
      delay: 3000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 2000,
      delay: 5000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 2000,
      delay: 7000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation5': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 2000,
      delay: 9000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'buttonOnPageLoadAnimation1': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 2000,
      delay: 10000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'buttonOnPageLoadAnimation2': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 2000,
      delay: 10000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'oo',
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
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Image.asset(
                      'assets/images/backgroundpic.png',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://firebasestorage.googleapis.com/v0/b/mypendapp.appspot.com/o/background.gif?alt=media&token=bfbefa29-6cf6-48db-8ddf-a01848f0a361',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.25),
                    child: Image.asset(
                      'assets/images/Perfect-loop-cube-SVG-[remix].gif',
                      width: 200,
                      fit: BoxFit.cover,
                    ).animated([animationsMap['imageOnPageLoadAnimation']!]),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.9),
                    child: Text(
                      'Welcome To My Pend App',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto Mono',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 12,
                          ),
                    ).animated([animationsMap['textOnPageLoadAnimation1']!]),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.8),
                    child: Text(
                      'Pend bridges the gap between the real life & the Metaverse',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto Mono',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 12,
                          ),
                    ).animated([animationsMap['textOnPageLoadAnimation2']!]),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.7),
                    child: Text(
                      'Or what some call web2.0 and web3.0',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto Mono',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 12,
                          ),
                    ).animated([animationsMap['textOnPageLoadAnimation3']!]),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.6),
                    child: Text(
                      'The Future of Internet',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto Mono',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 12,
                          ),
                    ).animated([animationsMap['textOnPageLoadAnimation4']!]),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.5),
                    child: Text(
                      'Pend is your gate to the metaverse!',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto Mono',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 12,
                          ),
                    ).animated([animationsMap['textOnPageLoadAnimation5']!]),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.35),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.goNamed(
                          'Intro',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                        soundPlayer ??= AudioPlayer();
                        if (soundPlayer!.playing) {
                          await soundPlayer!.stop();
                        }

                        soundPlayer!
                            .setUrl(
                                'https://firebasestorage.googleapis.com/v0/b/mypendapp.appspot.com/o/intro.mp3?alt=media&token=558baa0b-26f5-4065-808f-0f9937c2ab8d')
                            .then((_) => soundPlayer!.play());
                      },
                      text: 'Get Started',
                      options: FFButtonOptions(
                        width: 150,
                        height: 50,
                        color: Color(0xFF80DEEA),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ).animated([animationsMap['buttonOnPageLoadAnimation1']!]),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.15),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'phoneNumber',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                      },
                      text: 'Log in',
                      options: FFButtonOptions(
                        width: 150,
                        height: 50,
                        color: Color(0xFF80DEEA),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ).animated([animationsMap['buttonOnPageLoadAnimation2']!]),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
