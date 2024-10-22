import '/components/page_bg_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'discover_widget.dart' show DiscoverWidget;
import 'package:flutter/material.dart';

class DiscoverModel extends FlutterFlowModel<DiscoverWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for page_bg component.
  late PageBgModel pageBgModel;

  @override
  void initState(BuildContext context) {
    pageBgModel = createModel(context, () => PageBgModel());
  }

  @override
  void dispose() {
    pageBgModel.dispose();
  }
}
