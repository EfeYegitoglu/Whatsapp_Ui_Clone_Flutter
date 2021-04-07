import 'package:whatsapp_ui_clone/models/Messages.dart';
import 'package:whatsapp_ui_clone/models/User.dart';

final User currentUser = User(
  name: "Efe Yegitoğlu",
  userImageUrl:
      "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80",
);

final List<Messages> messages = [
  Messages(
      otherUserName: "James Lathrop",
      otherUserImageUrl:
          "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80",
      lastMessage: "Check out these cool puppers",
      messageDate: "15.03.2021",
      isViewed: true),
  Messages(
      otherUserName: "Elizabeth Wong",
      otherUserImageUrl:
          "https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80",
      messageDate: "24.02.2021",
      lastMessage:
          "Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
  Messages(
      otherUserName: "Matthew Hinkle",
      messageDate: "18.12.2020",
      otherUserImageUrl:
          "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80",
      lastMessage: "dventure 🏔"),
  Messages(
      otherUserName: "Amy Smith",
      messageDate: "26.10.2020",
      otherUserImageUrl:
          "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",
      lastMessage:
          "More placeholder text for the soul: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et",
      isViewed: true),
  Messages(
      otherUserName: "Carolyn Duncan",
      messageDate: "05.07.2019",
      otherUserImageUrl:
          "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      lastMessage: "A classic.",
      isViewed: true),
  Messages(
      otherUserName: "Paul Pinnock",
      messageDate: "20.01.2021",
      otherUserImageUrl:
          "https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      lastMessage: "Check out these cool puppers"),
  Messages(
      otherUserName: "Elizabeth Wong",
      messageDate: "14.02.2021",
      otherUserImageUrl:
          "https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80",
      lastMessage: "Check out these cool puppers",
      isViewed: true),
  Messages(
      otherUserName: "James Lathrop",
      messageDate: "19.08.2020",
      otherUserImageUrl:
          "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80",
      lastMessage: "Check out these cool puppers",
      isViewed: true),
  Messages(
      otherUserName: "Carolyn Duncan",
      messageDate: "06.20.2019",
      otherUserImageUrl:
          "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      lastMessage: "Check out these cool puppers"),
  Messages(
      otherUserName: "Jessie Samson",
      messageDate: "09.05.2019",
      otherUserImageUrl:
          "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      lastMessage: "Check out these cool puppers",
      isViewed: true),
];
