import 'package:auto_size_text/auto_size_text.dart';
import 'package:delivery_app/app/core/extensions/formater_extension.dart';
import 'package:delivery_app/app/core/ui/base_state/base_state.dart';
import 'package:delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:delivery_app/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:delivery_app/app/models/product_model.dart';
import 'package:delivery_app/app/pages/product_detail/product_detail_controller.dart';
import 'package:delivery_app/app/pages/product_detail/widgets/delivery_increment_decrement_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailPage extends StatefulWidget {
  final ProductModel product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState
    extends BaseState<ProductDetailPage, ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.screenWidth,
            height: context.percentHeight(.4),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.product.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              widget.product.name,
              style: context.textStyles.textExtraBold.copyWith(fontSize: 22),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                child: Text(
                  widget.product.description,
                  style: context.textStyles.textRegular.copyWith(fontSize: 12),
                ),
              ),
            ),
          ),
          const Divider(),
          BlocBuilder<ProductDetailController, int>(
            builder: (context, amout) {
              return Row(
                children: [
                  Container(
                    height: 68,
                    width: context.percentWidth(.5),
                    padding: const EdgeInsets.all(8),
                    child: DeliveryIncrementDecrementButton(
                      amout: amout,
                      decrementTap: () {
                        controller.decrement();
                      },
                      incrementTap: () {
                        controller.increment();
                      },
                    ),
                  ),
                  Container(
                    width: context.percentWidth(.5),
                    padding: const EdgeInsets.all(8),
                    height: 68,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Adicionar',
                            style: context.textStyles.textExtraBold
                                .copyWith(fontSize: 13),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: AutoSizeText(
                              (widget.product.price * amout).currencyPTBR,
                              maxFontSize: 13,
                              minFontSize: 5,
                              maxLines: 1,
                              textAlign: TextAlign.end,
                              style: context.textStyles.textExtraBold
                                  .copyWith(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
