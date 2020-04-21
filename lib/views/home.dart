import 'package:chat_app/models/storyModel.dart';
import 'package:chat_app/models/chatModel.dart';
import 'package:chat_app/views/chat.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<StoryModel> stories = new List();
  List<ChatModel> chats = new List();

  @override
  void initState() {
    super.initState();

    stories = getStories();
    chats = getChats();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171719),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70.0
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Messages',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600
                      )
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff444446),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),

              // Stories
              SizedBox(
                height: 50.0
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 120,
                child: ListView.builder(
                  itemCount: stories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return StoryTile(
                      imgUrl: stories[index].imgUrl,
                      username: stories[index].username,
                    );
                  }
                ),
              ),

              //Chats
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Recent",
                            style: TextStyle(
                              color: Color(0xffcacaca),
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            )
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xffcacaca),
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                      itemCount: chats.length,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context, index){
                        return ChatTile(
                          imgUrl: chats[index].imgUrl,
                          username: chats[index].username,
                          lastMessage: chats[index].lastMessage,
                          lastSeenTime: chats[index].lastSeenTime,
                          haveUnreadMessages: chats[index].haveUnreadMessages,
                          unreadMessages: chats[index].unreadMessages
                        );
                      }
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StoryTile extends StatelessWidget {

  final String imgUrl;
  final String username;

  StoryTile({@required this.imgUrl, @required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.network(
              imgUrl,
              height: 60,
              width: 60,
              fit: BoxFit.cover,),
          ),
          SizedBox(height: 16,),
          Text(
            username,
            style: TextStyle(
              color: Color(0xfffafafc),
              fontSize: 15,
              fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {

  final String imgUrl;
  final String username;
  final String lastMessage;
  final int unreadMessages;
  final bool haveUnreadMessages;
  final String lastSeenTime;

  ChatTile({@required this.unreadMessages, @required this.haveUnreadMessages, @required this.lastSeenTime, @required this.lastMessage, @required this.imgUrl, @required this.username});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.network(
                imgUrl,
                height: 50,
                width: 50,
                fit: BoxFit.cover,),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    username,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    lastMessage,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15
                    ),)
                ],
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    lastSeenTime,
                    style: TextStyle(
                      color: Colors.black54
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  haveUnreadMessages ? Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xffff410f),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Text(
                      '$unreadMessages',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ): Container()
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}