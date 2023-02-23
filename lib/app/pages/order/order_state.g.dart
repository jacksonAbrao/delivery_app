// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_state.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension OrderStatusMatch on OrderStatus {
  T match<T>(
      {required T Function() initial,
      required T Function() loading,
      required T Function() loader,
      required T Function() error}) {
    final v = this;
    if (v == OrderStatus.initial) {
      return initial();
    }

    if (v == OrderStatus.loading) {
      return loading();
    }

    if (v == OrderStatus.loader) {
      return loader();
    }

    if (v == OrderStatus.error) {
      return error();
    }

    throw Exception('OrderStatus.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any,
      T Function()? initial,
      T Function()? loading,
      T Function()? loader,
      T Function()? error}) {
    final v = this;
    if (v == OrderStatus.initial && initial != null) {
      return initial();
    }

    if (v == OrderStatus.loading && loading != null) {
      return loading();
    }

    if (v == OrderStatus.loader && loader != null) {
      return loader();
    }

    if (v == OrderStatus.error && error != null) {
      return error();
    }

    return any();
  }
}
