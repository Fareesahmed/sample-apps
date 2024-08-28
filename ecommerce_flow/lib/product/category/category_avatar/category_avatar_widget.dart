import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_avatar_model.dart';
export 'category_avatar_model.dart';

class CategoryAvatarWidget extends StatefulWidget {
  const CategoryAvatarWidget({
    super.key,
    this.addModelFn,
    required this.category,
  });

  final CategoryStruct? category;
  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<CategoryAvatarWidget> createState() => _CategoryAvatarWidgetState();
}

class _CategoryAvatarWidgetState extends State<CategoryAvatarWidget>
    with RouteAware {
  late CategoryAvatarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryAvatarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          context.pushNamed(
            'CategoryProductListPage',
            queryParameters: {
              'category': serializeParam(
                widget!.category,
                ParamType.DataStruct,
              ),
            }.withoutNulls,
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 75.0,
              height: 75.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    widget!.category!.categoryImg,
                  ).image,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 22.0,
                    color: Color(0x20000000),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget!.category?.categoryName,
                  'CategoryName',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
