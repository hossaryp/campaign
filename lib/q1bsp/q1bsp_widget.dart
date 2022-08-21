import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Q1bspWidget extends StatefulWidget {
  const Q1bspWidget({Key? key}) : super(key: key);

  @override
  _Q1bspWidgetState createState() => _Q1bspWidgetState();
}

class _Q1bspWidgetState extends State<Q1bspWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
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
    'textOnPageLoadAnimation2': AnimationInfo(
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
    'textOnPageLoadAnimation3': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 2000,
      delay: 15000,
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
      delay: 22000,
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
      delay: 28000,
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
    'buttonOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 2000,
      delay: 30000,
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
    'imageOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 30000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
        title: 'Q1bsp',
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
                    alignment: AlignmentDirectional(0, -0.9),
                    child: Text(
                      'You can make money playing sports',
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
                      'Your gate is an NFT',
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
                      'It will give you acess to the Event',
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
                      'You will recieve it on your phone number',
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
                      'It will be your pend Gate.',
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
                          'phoneNumber',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                        setState(() => FFAppState().gate = 'player');
                        setState(() => FFAppState().gifurl =
                            'https://firebasestorage.googleapis.com/v0/b/mypendapp.appspot.com/o/sports.png?alt=media&token=af3fc060-84a7-4a66-afad-2bfe8fe8b57f');
                      },
                      text: 'Recieve Your Gate',
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
                    ).animated([animationsMap['buttonOnPageLoadAnimation']!]),
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Image.asset(
                          'assets/images/Perfect-loop-cube-SVG-[remix].gif',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ).animated(
                            [animationsMap['imageOnPageLoadAnimation']!]),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: FlutterFlowVideoPlayer(
                          path:
                              'https://firebasestorage.googleapis.com/v0/b/mypendapp.appspot.com/o/q1bsp.webm?alt=media&token=d13a639f-196e-499b-bff3-a45308613409',
                          videoType: VideoType.network,
                          width: 250,
                          height: 250,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: false,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
