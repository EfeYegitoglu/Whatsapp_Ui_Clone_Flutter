class Messages {
  final String otherUserImageUrl;
  final String otherUserName;
  final String lastMessage;
  final String messageDate;
  final bool isViewed;

  Messages(
      {this.otherUserImageUrl,
      this.otherUserName,
      this.lastMessage,
      this.messageDate,
      this.isViewed = false});
}
