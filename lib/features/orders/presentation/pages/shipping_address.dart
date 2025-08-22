import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/orders/orders.dart';

@RoutePage()
class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({super.key});

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  int selectedIndex = -1;
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<OrderBloc>(context).add(OrderEvent.fetchUserAddress());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Select Shipping Address',
        showBackButton: true,
        actions: [],
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          if (state.shippingAddressStatus == ShippingAddressStatus.loading) {
            return const AppLoadingIndicator();
          } else if (state.addresses.isNotEmpty) {
            return ListView.builder(
              padding: EdgeInsets.only(bottom: 80, top: 10),
              itemCount: state.addresses.length,
              itemBuilder: (ctx, index) {
                final Shippingaddressmodel data = state.addresses[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            selectedIndex == index
                                ? Palette.mainColor.withValues(alpha: .3)
                                : Colors.white12,
                        border: Border.all(
                          color: Colors.grey.withValues(alpha: .8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.location_pin, color: Colors.grey),
                            Text('${data.city}, ${data.street}'),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (state.addresses.isEmpty) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('No address'),
                  const SizedBox(height: 10),
                  CustomNeumorphicButton(onTap: () {}, text: 'Add Address'),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
