import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

class Q1bWidget extends StatefulWidget {
  const Q1bWidget({Key? key}) : super(key: key);

  @override
  _Q1bWidgetState createState() => _Q1bWidgetState();
}

class _Q1bWidgetState extends State<Q1bWidget> with TickerProviderStateMixin {
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
    'buttonOnPageLoadAnimation1': AnimationInfo(
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
    'buttonOnPageLoadAnimation2': AnimationInfo(
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
        title: 'Q1B',
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
                      'Let me tell you what you can do on the Metaverse',
                      textAlign: TextAlign.center,
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
                      'Sports clubs started to use Tokens to engage fans',
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
                      'Some workout run or hike on the Metaverse',
                      textAlign: TextAlign.center,
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
                      'Another popular industry is entertainment',
                      textAlign: TextAlign.center,
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
                      'You can watch movies or listen to music!',
                      textAlign: TextAlign.center,
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
                          'Q1BS',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                        soundPlayer1 ??= AudioPlayer();
                        if (soundPlayer1!.playing) {
                          await soundPlayer1!.stop();
                        }

                        soundPlayer1!
                            .setUrl(
                                'https://firebasestorage.googleapis.com/v0/b/mypendapp.appspot.com/o/q1bs.mp3?alt=media&token=919d844e-4983-46cf-bf87-607612cf7d24')
                            .then((_) => soundPlayer1!.play());
                      },
                      text: 'Sports',
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
                        context.goNamed(
                          'Q1BE',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                        soundPlayer2 ??= AudioPlayer();
                        if (soundPlayer2!.playing) {
                          await soundPlayer2!.stop();
                        }

                        soundPlayer2!
                            .setUrl(
                                'https://firebasestorage.googleapis.com/v0/b/mypendapp.appspot.com/o/Q1be.mp3?alt=media&token=ea67184e-3035-4253-9797-349de6d601ec')
                            .then((_) => soundPlayer2!.play());
                      },
                      text: 'Entertainment',
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
                              'https://firebasestorage.googleapis.com/v0/b/mypendapp.appspot.com/o/q1b.webm?alt=media&token=01a8dba9-0ae1-452e-8d7f-219d9167b5e4',
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
