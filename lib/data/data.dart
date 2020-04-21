import 'package:chat_app/models/messageModel.dart';
import 'package:chat_app/models/storyModel.dart';
import 'package:chat_app/models/chatModel.dart';

List<StoryModel> getStories(){
  List<StoryModel> stories = new List();
  StoryModel storyModel = new StoryModel();

  //1
  storyModel.imgUrl = "https://s3.amazonaws.com/uifaces/faces/twitter/sachacorazzi/128.jpg";
  storyModel.username = "Eric";

  stories.add(storyModel);

  storyModel = new StoryModel();

  //2
  storyModel.imgUrl = "https://s3.amazonaws.com/uifaces/faces/twitter/robinclediere/128.jpg";
  storyModel.username = "Kenton";

  stories.add(storyModel);

  storyModel = new StoryModel();

  //3
  storyModel.imgUrl = "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  storyModel.username = "Lawrence";

  stories.add(storyModel);

  storyModel = new StoryModel();

  //4
  storyModel.imgUrl = "https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  storyModel.username = "Mariana";

  stories.add(storyModel);

  storyModel = new StoryModel();

  //5
  storyModel.imgUrl = "https://s3.amazonaws.com/uifaces/faces/twitter/joelhelin/128.jpg";
  storyModel.username = "Alexandre";

  stories.add(storyModel);

  storyModel = new StoryModel();

  //5
  storyModel.imgUrl = "https://images.unsplash.com/photo-1474978528675-4a50a4508dc3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  storyModel.username = "Bell";

  stories.add(storyModel);

  storyModel = new StoryModel();

  return stories;
}

List<ChatModel> getChats(){
  List<ChatModel> chats = new List();
  ChatModel chatModel = new ChatModel();


  //1
  chatModel.username = 'Kenton';
  chatModel.imgUrl = 'https://s3.amazonaws.com/uifaces/faces/twitter/robinclediere/128.jpg';
  chatModel.lastMessage = "you'd better make a pinterest folder, will you? so that we don't have to screenshot each of them";
  chatModel.lastSeenTime = "5m";
  chatModel.haveUnreadMessages = true;
  chatModel.unreadMessages = 1;
  chats.add(chatModel);

  chatModel = new ChatModel();

  //1
  chatModel.imgUrl = "https://s3.amazonaws.com/uifaces/faces/twitter/sachacorazzi/128.jpg";
  chatModel.username = "Eric";
  chatModel.lastMessage = "Wow! Really Cool!";
  chatModel.lastSeenTime = "5m";
  chatModel.haveUnreadMessages = true;
  chatModel.unreadMessages = 4;
  chats.add(chatModel);

  chatModel = new ChatModel();

  //1
  chatModel.imgUrl = "https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  chatModel.username = "Mariana";
  chatModel.lastMessage = "So the exact same trends as the last few years";
  chatModel.lastSeenTime = "15m";
  chatModel.haveUnreadMessages = false;
  chatModel.unreadMessages = 1;
  chats.add(chatModel);

  chatModel = new ChatModel();
  
  //1
  chatModel.imgUrl = "https://images.unsplash.com/photo-1474978528675-4a50a4508dc3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  chatModel.username = "Bell";
  chatModel.lastMessage = "Nice work! Thankssss";
  chatModel.lastSeenTime = "23m";
  chatModel.haveUnreadMessages = false;
  chatModel.unreadMessages = 1;
  chats.add(chatModel);

  chatModel = new ChatModel();

  //1
  chatModel.imgUrl = "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  chatModel.username = "Lawrence";
  chatModel.lastMessage = "Music is so much distracting...I couldn't concentrate on Vid...";
  chatModel.lastSeenTime = "28m";
  chatModel.haveUnreadMessages = false;
  chatModel.unreadMessages = 1;
  chats.add(chatModel);

  chatModel = new ChatModel();

  //1
  chatModel.username = 'Alexandre';
  chatModel.imgUrl = 'https://s3.amazonaws.com/uifaces/faces/twitter/joelhelin/128.jpg';
  chatModel.lastMessage = "If you’re gonna make a video like this you gotta do some talking about it";
  chatModel.lastSeenTime = "54m";
  chatModel.haveUnreadMessages = true;
  chatModel.unreadMessages = 1;
  chats.add(chatModel);

  chatModel = new ChatModel();

  //1
  chatModel.username = 'Marjorie';
  chatModel.imgUrl = 'https://images.unsplash.com/photo-1520155707862-5b32817388d6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  chatModel.lastMessage = "What is the name of this app if it is real?";
  chatModel.lastSeenTime = "57m";
  chatModel.haveUnreadMessages = true;
  chatModel.unreadMessages = 2;
  chats.add(chatModel);

  chatModel = new ChatModel();

  //1
  chatModel.username = 'Leonard';
  chatModel.imgUrl = 'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  chatModel.lastMessage = "Which software should I use for prototyping if I use figma?";
  chatModel.lastSeenTime = "1h";
  chatModel.haveUnreadMessages = false;
  chatModel.unreadMessages = 1;
  chats.add(chatModel);

  chatModel = new ChatModel();

  //1
  chatModel.username = 'Kiara';
  chatModel.imgUrl = 'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  chatModel.lastMessage = "This is great and sum up the trends so well. More UI UX video please! 😍";
  chatModel.lastSeenTime = "1h";
  chatModel.haveUnreadMessages = false;
  chatModel.unreadMessages = 1;
  chats.add(chatModel);

  chatModel = new ChatModel();

  //1
  chatModel.username = 'Lynn';
  chatModel.imgUrl = 'https://images.unsplash.com/photo-1520223297779-95bbd1ea79b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  chatModel.lastMessage = "😍 This is great stuff!! Please make more videos like these! 🤩";
  chatModel.lastSeenTime = "1d";
  chatModel.haveUnreadMessages = true;
  chatModel.unreadMessages = 3;
  chats.add(chatModel);

  chatModel = new ChatModel();

  //1
  chatModel.username = 'Niki';
  chatModel.imgUrl = 'https://images.unsplash.com/photo-1532553740552-40cafa91e7ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  chatModel.lastMessage = "Do you guys know where we could find such art illustration???";
  chatModel.lastSeenTime = "3d";
  chatModel.haveUnreadMessages = false;
  chatModel.unreadMessages = 1;
  chats.add(chatModel);

  chatModel = new ChatModel();
  
  return chats;
}

List<MessageModel> getMessages(){
  List<MessageModel> messages = new List();
  MessageModel messageModel = new MessageModel();

  //1
  messageModel.message = "Hey there...";
  messageModel.isByMe = true;
  messages.add(messageModel);

  messageModel = new MessageModel();

  //1
  messageModel.message = "Something is a trend if it is raising, why cant something raise for several hears?";
  messageModel.isByMe = false;
  messages.add(messageModel);

  messageModel = new MessageModel();

  //1
  messageModel.message = "So the exact same trends as the last few years";
  messageModel.isByMe = true;
  messages.add(messageModel);

  messageModel = new MessageModel();

  return messages;

}