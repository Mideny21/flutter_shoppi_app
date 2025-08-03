import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/cart/cart.dart';
import 'package:shoppi/features/products/products.dart';

@RoutePage()
class ProductDetailPage extends StatefulWidget {
  final String id;
  const ProductDetailPage({Key? key, required this.id}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  CartCubit get cubit => BlocProvider.of<CartCubit>(context);
  bool added = false;

  void checkCart() {
    var found = cubit.state.any(
      (element) => element.productId == int.parse(widget.id),
    );
    if (found) {
      setState(() {
        added = true;
      });
    } else {
      setState(() {
        added = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<ProductBloc>(
      context,
    ).add(ProductEvent.loadSingleProduct(int.parse(widget.id)));
    checkCart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    final ProductModel? product = context.select(
      (ProductBloc bloc) => bloc.state.product,
    );

    void submitToCart() {
      if (product != null) {
        var cartData = CartItem(
          productId: product.id,
          name: product.name,
          image: product.productImage!.first.url,
          price: double.parse(product.price),
          quantity: 1,
        );
        cartCubit.addToCart(cartData);
        setState(() {
          added = true;
        });
        ToastHelper.showSuccess(
          context: context,
          title: 'Success',
          message: '${product.name} added to cart',
        );
      }
    }

    return Scaffold(
      bottomSheet: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocSelector<ProductBloc, ProductState, String?>(
                selector: (state) {
                  return state.product?.price;
                },
                builder: (context, state) {
                  return Text(
                    "\$ ${moneyFormatter.format(double.parse(state ?? '0')).toString()}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  );
                },
              ),
              // TODO: Add to cart and handle translation
              CustomNeumorphicButton(
                onTap: !added ? submitToCart : null,
                text: added ? 'Added' : 'Add to cart',
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state.productStatus == ProductStatus.loading) {
            return const Center(child: AppLoadingIndicator());
          } else if (state.product != null) {
            final ProductModel product = state.product!;
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 400,
                  floating: true,
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: BackButton(
                        onPressed: () {
                          context.pop();

                          // if (context.canPop()) {
                          //   context.pop();
                          // } else {
                          //   context.router.replace(const HomeRoute());
                          // }
                        },
                      ),
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return FadeInImage.assetNetwork(
                          placeholder: 'assets/images/loading.gif',
                          image: product.productImage![index].url,
                          fit: BoxFit.cover,
                        );
                      },
                      itemCount: product.productImage?.length ?? 0,
                      loop: false,
                      pagination: SwiperPagination(
                        margin: const EdgeInsets.all(0.0),
                        builder: SwiperCustomPagination(
                          builder: (
                            BuildContext context,
                            SwiperPluginConfig config,
                          ) {
                            return ConstrainedBox(
                              constraints: const BoxConstraints.expand(
                                height: 25,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text(
                                  "${config.activeIndex + 1}/${config.itemCount}",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Palette.mainColor,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      product.description,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
