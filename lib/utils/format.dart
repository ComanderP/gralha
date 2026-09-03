String formatRelativeTime(DateTime time, {DateTime? now}) {
  final difference = (now ?? DateTime.now()).difference(time);
  if (difference.inMinutes < 1) return "just now";
  if (difference.inHours < 1) return "${difference.inMinutes}m ago";
  if (difference.inHours < 24) return "${difference.inHours}h ago";
  if (difference.inDays < 2) return "yesterday";
  if (difference.inDays < 7) return "${difference.inDays} days ago";
  if (difference.inDays < 60) {
    final weeks = (difference.inDays / 7).floor();
    return weeks == 1 ? "1 week ago" : "$weeks weeks ago";
  }
  const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
  return "${months[time.month - 1]} ${time.year}";
}

String formatWordCount(int words) {
  if (words >= 1000) {
    final k = words / 1000;
    return "${k % 1 == 0 ? k.toInt() : k.toStringAsFixed(1)}k";
  }
  return "$words";
}
