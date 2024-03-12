import '/flutter_flow/flutter_flow_util.dart';
import 'click_event_widget.dart' show ClickEventWidget;
import 'package:flutter/material.dart';

class ClickEventModel extends FlutterFlowModel<ClickEventWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
