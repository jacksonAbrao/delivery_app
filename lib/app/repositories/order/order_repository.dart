import 'package:delivery_app/app/models/payment_type_model.dart';
import 'package:delivery_app/app/pages/order/width/payment_types_field.dart';

abstract class OrderRepository {
  Future<List<PaymentTypeModel>> getAllPaymentsTypes();
}
