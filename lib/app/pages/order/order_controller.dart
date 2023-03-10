import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:delivery_app/app/dto/order_product_dto.dart';
import 'package:delivery_app/app/pages/order/order_state.dart';
import 'package:delivery_app/app/repositories/order/order_repository.dart';

class OrderController extends Cubit<OrderState> {
  final OrderRepository _orderRepository;
  OrderController(this._orderRepository) : super(const OrderState.initial());

  Future<void> load(List<OrderProductDto> products) async {
    try {
      emit(
        state.copyWith(
          status: OrderStatus.loading,
        ),
      );
      final paymentTypes = await _orderRepository.getAllPaymentsTypes();
      emit(
        state.copyWith(
          orderProducts: products,
          status: OrderStatus.loader,
          paymentTypes: paymentTypes,
        ),
      );
    } on Exception catch (e, s) {
      log('Erro ao carregar página', error: e, stackTrace: s);
      emit(
        state.copyWith(
          status: OrderStatus.error,
          errorMessage: 'Erro ao carregar página',
        ),
      );
    }
  }
}
