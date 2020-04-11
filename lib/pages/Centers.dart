class Centers {
  String firstName;
  String lastName;

  Centers({this.firstName, this.lastName});

  static List<Centers> getCenters() {
    return <Centers>[
      Centers(firstName: "Aaryan", lastName: "Shah"),
      Centers(firstName: "Ben", lastName: "John"),
      Centers(firstName: "Carrie", lastName: "Brown"),
      Centers(firstName: "Deep", lastName: "Sen"),
      Centers(firstName: "Emily", lastName: "Jane"),
    ];
  }
}