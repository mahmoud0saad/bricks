enum NegotiableSelectionEnum { negotiable, nonNegotiable }

extension NegotiableSelectionEnumExtension on NegotiableSelectionEnum {
  static NegotiableSelectionEnum? fromJson(bool? value) {
    switch (value) {
      case true:
        return NegotiableSelectionEnum.negotiable;
      case false:
        return NegotiableSelectionEnum.nonNegotiable;
      default:
        return null;
    }
  }

  bool getValue() {
    switch (this) {
      case NegotiableSelectionEnum.negotiable:
        return true;
      case NegotiableSelectionEnum.nonNegotiable:
        return false;
    }
  }
}
