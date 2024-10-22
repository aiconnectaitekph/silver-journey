import '/components/page_bg_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_p_i_key_screen_widget.dart' show APIKeyScreenWidget;
import 'package:flutter/material.dart';

class APIKeyScreenModel extends FlutterFlowModel<APIKeyScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for page_bg component.
  late PageBgModel pageBgModel;
  // State field(s) for api_key widget.
  FocusNode? apiKeyFocusNode;
  TextEditingController? apiKeyTextController;
  String? Function(BuildContext, String?)? apiKeyTextControllerValidator;
  String? _apiKeyTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter API Key';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    pageBgModel = createModel(context, () => PageBgModel());
    apiKeyTextControllerValidator = _apiKeyTextControllerValidator;
  }

  @override
  void dispose() {
    pageBgModel.dispose();
    apiKeyFocusNode?.dispose();
    apiKeyTextController?.dispose();
  }
}
