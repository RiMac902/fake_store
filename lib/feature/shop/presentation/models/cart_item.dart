import 'package:fake_store/feature/shop/presentation/models/product_ui_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required ProductUiModel product,
    required int quantity,
  }) = _CartItem;
}
