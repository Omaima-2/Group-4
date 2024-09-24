import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'show_services_widget.dart' show ShowServicesWidget;
import 'package:flutter/material.dart';

class ShowServicesModel extends FlutterFlowModel<ShowServicesWidget> {
  ///  Local state fields for this page.

  List<ServicesRecord> servi6 = [];
  void addToServi6(ServicesRecord item) => servi6.add(item);
  void removeFromServi6(ServicesRecord item) => servi6.remove(item);
  void removeAtIndexFromServi6(int index) => servi6.removeAt(index);
  void insertAtIndexInServi6(int index, ServicesRecord item) =>
      servi6.insert(index, item);
  void updateServi6AtIndex(int index, Function(ServicesRecord) updateFn) =>
      servi6[index] = updateFn(servi6[index]);

  int? price = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
