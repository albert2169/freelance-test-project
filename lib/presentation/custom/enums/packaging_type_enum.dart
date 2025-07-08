
enum PackagingType {
    kg, liter, amount

}

extension PackagingTypeExtension on PackagingType {

  List<String> get name {
    switch (this) {
      case PackagingType.kg:
        return ['1кг', '2кг', '5кг', '10кг'];
      case PackagingType.liter:
        return ['1л', '5л', '10л', '20л'];
      case PackagingType.amount:
        return [];
    }
  }




}