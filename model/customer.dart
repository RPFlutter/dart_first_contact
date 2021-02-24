class Customer {
  String name;
  String? _socialSecurityNumber;
  bool hasFidelityCard;

  Customer(
      {required this.name,
      socialSecurityNumber,
      this.hasFidelityCard = false}) {
    _socialSecurityNumber = socialSecurityNumber;
  }

  get socialSecurityNumber => _socialSecurityNumber;
  set socialSecurityNumber(newSocialSecurityNumber) =>
      _socialSecurityNumber = newSocialSecurityNumber;
}
