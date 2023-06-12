/// The following is to calculate number of empty boxes for the rest of week
/// We can then use it to get desired endDate on [HeatMap]
/// For example:
///
/// DateTime todaysDate = DateTime.now();
/// int numOfEmptyBoxes = todaysDate.numOfEmptyBoxes;
///
/// HeatMap(
///   startDate: DateTime.now(),
///   endDate: DateTime.now().add(const Duration(days: numOfEmptyBoxes)),
/// )
///

extension DayValueExtension on DateTime {
  int get numOfEmptyBoxes {
    switch (weekday) {
      case DateTime.saturday:
        return 0;
      case DateTime.sunday:
        return 6;
      case DateTime.monday:
        return 5;
      case DateTime.tuesday:
        return 4;
      case DateTime.wednesday:
        return 3;
      case DateTime.thursday:
        return 2;
      case DateTime.friday:
        return 1;
      default:
        return -1; // Default value if the date is not valid
    }
  }
}
