import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future addToWishlist(
  BuildContext context, {
  required String? productId,
}) async {
  // Add productId to wishlist object
  FFAppState().addToLocalWishlist(productId!);
  FFAppState().update(() {});
}
