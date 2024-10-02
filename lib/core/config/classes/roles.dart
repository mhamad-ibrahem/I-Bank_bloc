enum Roles<String> {
  member("Member"),
  guest("Guest"),
  administrationMember("AdministrationMember");

  const Roles(this.value);
  final String value;
}
