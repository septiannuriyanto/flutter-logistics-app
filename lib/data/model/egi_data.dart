class EGIService {
  static final List<String> egi = [
    'HD465',
    'HD785-5',
    'HD785-7',
    'D85ESS-1',
    'D85ESS-2',
    'DZ155',
    'D375-A',
    'GD825',
    'PC-200',
    'PC-300',
    'PC-400',
    'PC-750',
    'PC-800',
    'PC-850',
    'PC-1250',
    'PC-2000'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(egi);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}
