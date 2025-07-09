import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:agro_market/presentation/models/delivery_details_view_model.dart';
import 'package:agro_market/presentation/screens/delivery_screens/state/delivery_event.dart';
import 'package:agro_market/presentation/screens/delivery_screens/state/delivery_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeliveryBloc extends Bloc<DeliveryEvent, DeliveryState> {
  DeliveryBloc()
    : super(
        const DeliveryState(
          isDelivered: false,
          basketProducts: [],
          loadState: LoadState.loaded,
          errorMsg: '',
          totalPrice: 0,
          deliveryDetails: DeliveryDetailsViewModel(
            address: '',
            comments: '',
            contactNumber: '',
            pickupAddress: '',
          ),
        ),
      ) {
    on<DeliverProducts>(_handleDeliverProducts);
    on<InitDeliverProductsState>(_handleInitDeliverProductsState);
  }

  void _handleDeliverProducts(DeliverProducts event, Emitter<DeliveryState> emit) async {
    emit(state.copyWith(loadState: LoadState.loading));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(loadState: LoadState.loaded, isDelivered: true));
  }
  void _handleInitDeliverProductsState(InitDeliverProductsState event, Emitter<DeliveryState> emit) async {
    emit(DeliveryState(
          isDelivered: false,
          basketProducts: [],
          loadState: LoadState.loaded,
          errorMsg: '',
          totalPrice: 0,
          deliveryDetails: DeliveryDetailsViewModel(
            address: '',
            comments: '',
            contactNumber: '',
            pickupAddress: '',
          ),
        ));
  }
}
