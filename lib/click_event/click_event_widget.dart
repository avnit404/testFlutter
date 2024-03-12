import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'click_event_model.dart';
export 'click_event_model.dart';

class ClickEventWidget extends StatefulWidget {
  const ClickEventWidget({super.key});

  @override
  State<ClickEventWidget> createState() => _ClickEventWidgetState();
}

class _ClickEventWidgetState extends State<ClickEventWidget> {
  late ClickEventModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClickEventModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: const SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                content:
                    '<html>\n  <head>\n    <title>Event Click LatLng</title>\n    <script src=\"https://polyfill.io/v3/polyfill.min.js?features=default\"></script>\n\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"./style.css\" />\n    <script type=\"module\" src=\"./index.js\"></script>\n  </head>\n  <body>\n    <div id=\"map\"></div>\n\n    <!-- prettier-ignore -->\n    <script>(g=>{var h,a,k,p=\"The Google Maps JavaScript API\",c=\"google\",l=\"importLibrary\",q=\"__ib__\",m=document,b=window;b=b[c]||(b[c]={});var d=b.maps||(b.maps={}),r=new Set,e=new URLSearchParams,u=()=>h||(h=new Promise(async(f,n)=>{await (a=m.createElement(\"script\"));e.set(\"libraries\",[...r]+\"\");for(k in g)e.set(k.replace(/[A-Z]/g,t=>\"_\"+t[0].toLowerCase()),g[k]);e.set(\"callback\",c+\".maps.\"+q);a.src=`https://maps.\${c}apis.com/maps/api/js?`+e;d[q]=f;a.onerror=()=>h=n(Error(p+\" could not load.\"));a.nonce=m.querySelector(\"script[nonce]\")?.nonce||\"\";m.head.append(a)}));d[l]?console.warn(p+\" only loads once. Ignoring:\",g):d[l]=(f,...n)=>r.add(f)&&u().then(()=>d[l](f,...n))})\n        ({key: \"AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg\", v: \"weekly\"});</script>\n  </body>\n</html>',
                height: 500.0,
                verticalScroll: false,
                horizontalScroll: false,
                html: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
