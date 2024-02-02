import 'package:flutter/material.dart';

abstract class DefaultUiStateCallback {
  DefaultUiStateCallback(this.onLoading, this.onError, this.onFinished);

  final VoidCallback onLoading;
  final VoidCallback onFinished;
  final ValueChanged<Exception> onError;
}

class DefaultUiStateImpl implements DefaultUiStateCallback {
  final VoidCallback loading;
  final VoidCallback finished;
  final ValueChanged<Exception> error;

  DefaultUiStateImpl(this.loading, this.finished, this.error);

  @override
  ValueChanged<Exception> get onError => error;

  @override
  VoidCallback get onFinished => finished;

  @override
  VoidCallback get onLoading => loading;
}

DefaultUiStateCallback defaultUiState(
        {required VoidCallback loading,
        required VoidCallback finished,
        required ValueChanged<Exception> error}) =>
    DefaultUiStateImpl(loading, finished, error);
