class GuestBookMessage {
  final String name;
  final String message;
  final DateTime timestamp;
  final String userId;
  final String id;

  GuestBookMessage({
    required this.name,
    required this.message,
    required this.timestamp,
    required this.userId,
    required this.id
  });
}