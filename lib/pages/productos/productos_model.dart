import '/components/product_card3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'productos_widget.dart' show ProductosWidget;
import 'package:flutter/material.dart';

class ProductosModel extends FlutterFlowModel<ProductosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProductCard.
  late ProductCard3Model productCardModel1;
  // Model for ProductCard.
  late ProductCard3Model productCardModel2;
  // Model for ProductCard.
  late ProductCard3Model productCardModel3;
  // Model for ProductCard.
  late ProductCard3Model productCardModel4;
  // Model for ProductCard.
  late ProductCard3Model productCardModel5;
  // Model for ProductCard.
  late ProductCard3Model productCardModel6;

  @override
  void initState(BuildContext context) {
    productCardModel1 = createModel(context, () => ProductCard3Model());
    productCardModel2 = createModel(context, () => ProductCard3Model());
    productCardModel3 = createModel(context, () => ProductCard3Model());
    productCardModel4 = createModel(context, () => ProductCard3Model());
    productCardModel5 = createModel(context, () => ProductCard3Model());
    productCardModel6 = createModel(context, () => ProductCard3Model());
  }

  @override
  void dispose() {
    productCardModel1.dispose();
    productCardModel2.dispose();
    productCardModel3.dispose();
    productCardModel4.dispose();
    productCardModel5.dispose();
    productCardModel6.dispose();
  }
}
