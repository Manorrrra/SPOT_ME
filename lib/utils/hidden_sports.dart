class HiddenSportsConfig {
  static const Set<String> hiddenSports = {'Basketball', 'Volleyball'};

  static bool isHidden(String sportName) => hiddenSports.contains(sportName);
}
