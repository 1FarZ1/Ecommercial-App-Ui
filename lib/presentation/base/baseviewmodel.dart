import 'dart:async';

import 'package:eapp/presentation/common/state_renderer/state_renderer_impl.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs {
  final StreamController _inputStreamController =
      BehaviorSubject<FlowState>();

  @override
  void dispose() {
    _inputStreamController.close();
  }

  @override
  void start() {}

  @override
  Sink get inputState => _inputStreamController.sink;

  @override
  Stream<FlowState> get outputState =>
      _inputStreamController.stream.map((flowState) => flowState);
}

abstract class BaseViewModelInputs {
  void start(); // start view model job ( N3ytolo ki ybda view model lkhdma)

  void
      dispose(); // will be called when view model dies ( N3ytolo ki ykml  view model lkhdma)
  Sink get inputState;

  // Sink get inputState;
}

abstract class BaseViewModelOutputs {
  Stream<FlowState> get outputState;
}


// import 'dart:async';

// import 'package:advanced_flutter_arabic/presentation/common/state_renderer/state_renderer_impl.dart';
// import 'package:rxdart/rxdart.dart';

// abstract class BaseViewModel extends BaseViewModelInputs
//     with BaseViewModelOutputs {
//   // shared variables and function that will be used through any view model.


//   @override
//   void dispose() {
//     _inputStreamController.close();
//   }
// }

// abstract class BaseViewModelInputs {
//   void start(); // start view model job

//   void dispose(); // will be called when view model dies

//   Sink get inputState;
// }

// abstract class BaseViewModelOutputs {
//   // will be implemented later

//   Stream<FlowState> get outputState;
// }
