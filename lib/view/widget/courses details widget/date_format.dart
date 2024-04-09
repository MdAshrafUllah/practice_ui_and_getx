String formatCurrentDate(String updatedAt) {
  DateTime parsedDate = DateTime.parse(updatedAt);
  String formattedDate =
      '${parsedDate.month.toString().padLeft(2)}/${parsedDate.year}';
  return formattedDate;
}
