import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/toast_helper.dart';
import 'package:shoppi/features/orders/orders.dart';

@RoutePage()
class AddShippingAddressScreen extends StatefulWidget {
  const AddShippingAddressScreen({super.key});

  @override
  State<AddShippingAddressScreen> createState() =>
      _AddShippingAddressScreenState();
}

class _AddShippingAddressScreenState extends State<AddShippingAddressScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final cityController = TextEditingController();
  final streetController = TextEditingController();
  final zipCodeController = TextEditingController();

  _submit() {
    if (_formKey.currentState!.validate()) {
      var addressParam = ShippingAddressParam(
        city: cityController.text,
        street: streetController.text,
        zipcode: zipCodeController.text,
      );

      BlocProvider.of<OrderBloc>(
        context,
      ).add(OrderEvent.createShippingAddress(addressParam));
    }
  }

  @override
  void dispose() {
    cityController.dispose();
    streetController.dispose();
    zipCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Add Shipping Address", showBackButton: true),

      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InputFields(
                  hintText: 'Enter city',
                  title: "City",
                  controller: cityController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Field is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                InputFields(
                  hintText: 'Enter Street',
                  title: "Street",
                  controller: streetController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Field is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                InputFields(
                  hintText: 'Enter Zip Code',
                  title: "Zip Code",
                  controller: zipCodeController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Field is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                BlocConsumer<OrderBloc, OrderState>(
                  listener: (context, state) {
                    if (state.shippingAddressStatus ==
                        ShippingAddressStatus.submittingAddress) {
                      showDialog(
                        context: context,
                        builder: (ctx) {
                          return const LoadingDialog();
                        },
                      );
                    } else if (state.addressSubmitted) {
                      ToastHelper.showSuccess(
                        context: context,
                        title: 'Success',
                        message: "Address Submitted Successfully",
                      );
                      context.pop();
                    } else if (state.error != '') {
                      context.pop();
                      ToastHelper.showError(
                        context: context,
                        title: 'Error',
                        message: state.error,
                      );
                    }
                  },
                  builder: (context, state) {
                    return CustomNeumorphicButton(
                      onTap: _submit,
                      text: 'Save Address',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
