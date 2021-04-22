class ExtractNameLetters {
  final String name;

  ExtractNameLetters(this.name);

  String getInitials() {
    List<String> names = name.split(" ");
    String initials = "";

    for (int i = 0; i < names.length; i++) {
      if (names[i].contains('.')) {
        continue;
      }

      initials += "${names[i][0]}";

      if (initials.length == 2) {
        break;
      }
    }
    return initials;
  }
}
