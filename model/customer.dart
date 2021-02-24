class Customer {
  
  late String _name;
  late bool _hasFidelityCard;
  String? _socialSecurityNumber;
  
  Customer({ name, socialSecurityNumber, hasFidelityCard = false}) {
    _name = name;
    _hasFidelityCard = hasFidelityCard;
    _socialSecurityNumber = socialSecurityNumber;
  }

  String? get socialSecurityNumber => _socialSecurityNumber;
  void set socialSecurityNumber(newSocialSecurityNumber) => _socialSecurityNumber = newSocialSecurityNumber;

  String get name => _name;
  void set name(newName) => _name = newName;

  bool get hasFidelityCard => _hasFidelityCard;
  void set hasFidelityCard(bool fidelityCard) => _hasFidelityCard = fidelityCard;
}
