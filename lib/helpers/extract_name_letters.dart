class ExtractNameLetters {
  final String name;

  ExtractNameLetters(this.name);

  String getInitials() {
    List<String> names = name.split(" ");
    String initials = "";
    int numWords = 2;

    if (numWords < names.length) {
      names = [names[names.length - 2], names[names.length - 1]];
    }

    for (int i = 0; i < numWords; i++) {
      initials += "${names[i][0]}";
    }
    return initials;
  }
}
