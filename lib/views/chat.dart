import 'package:chat_app/data/data.dart';
import 'package:chat_app/models/messageModel.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  List<MessageModel> messages = new List();

  @override
  void initState() {
    super.initState();
    messages = getMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 90,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.network(
                "https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                height: 90,
                width: 90,
                fit: BoxFit.cover,),
            ),
            SizedBox(
              height: 14
            ),
            Text(
              "Mariana",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87
              ),
            ),
            SizedBox(
              height: 4
            ),
            Text(
              "5 minutes ago",
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return ChattingTile(
                    isByMe: messages[index].isByMe,
                    message: messages[index].message
                  );
                }
              ),
            )
          ],
        )
      ),
      bottomSheet: Container( 
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          decoration: BoxDecoration(
            color: Color(0xfff4f5fa),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Row(
            children: <Widget>[
              ClipRRect(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xffe7e7ef),
                    borderRadius: BorderRadius.circular(14)
                  ),
                  child: Icon(
                    Icons.more_horiz,
                  ),
                )
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Aa",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500)
                  ),
                ),
              ),
              ClipRRect(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xffe7e7ef),
                    borderRadius: BorderRadius.circular(14)
                  ),
                  child: Icon(
                    Icons.insert_emoticon,
                  ),
                )
              ),
            ],
          ),
        )
      ),
    );
  }
}

class ChattingTile extends StatelessWidget {
  
  final bool isByMe;
  final String message;

  ChattingTile({@required this.isByMe, @required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      alignment: isByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: isByMe ? Color(0xffff410f) : Color(0xfffff3f1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: isByMe ? Radius.circular(30) : Radius.circular(0),
            bottomRight: isByMe ? Radius.circular(0) : Radius.circular(30)
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 2 / 3
          ),
          child: Text(
            message,
            style: TextStyle(
              color: isByMe ? Colors.white : Color(0xff650000),
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}