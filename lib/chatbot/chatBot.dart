import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_gemini/google_gemini.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:w_health/utils/utils.dart';
import 'geminiAI.dart';


class ChatBot extends StatefulWidget {
  const ChatBot({
    super.key, required this.page
  });
  final page;

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {

  @override
  Widget build(BuildContext context) {
    var page = widget.page;
    return DefaultTabController(
        initialIndex: page,
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title:  Text("Google Gemini",
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.25,
                  color: Colors.white.withOpacity(0.8),
                ),),
              backgroundColor: Color(0x44000000),
              elevation: 0,
              centerTitle: true,
              bottom: const TabBar(

                tabs: [
                  Tab(text: "Text Only",),
                  Tab(text: "Text with Image"),
                ],
              ),
            ),
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                Positioned(
                  top: 100,
                  right: 0,
                  child: Container(
                    height: 300,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      topLeft: Radius.circular(200),
                      ),
                      gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(254,196,221, 0.5),
                        Color.fromRGBO(192,159,248, 0.5),
                      ],
                      ),
                    ),
                )
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 60.0, sigmaY: 60.0),
              child: const TabBarView(
                children: [TextOnly(), TextWithImage()],
            )
    )])
    )
    );
  }
}

// ------------------------------ Text Only ------------------------------


class TextOnly extends StatefulWidget {
  const TextOnly({
    super.key,
  });

  @override
  State<TextOnly> createState() => _TextOnlyState();
}

class _TextOnlyState extends State<TextOnly> {
  bool loading = false;
  List textChat = [];
  List textWithImageChat = [];
  String history = 'you are Healthcare assistant chatbot named Gemini. Your goal is to help patients to find the right healthcare branch for their specific needs. Tell them "Please share your health conditions or symptoms, and we will guide you to the most suitable place for assistance."';
  // this helps us to create a memory for gemini


  final TextEditingController _textController = TextEditingController();
  final ScrollController _controller = ScrollController();

  // Create Gemini Instance
  final gemini = GoogleGemini(
    apiKey: GeminiBot.apiKey,
  );
  @override
  void initState() {
    textChat.add({
      "role": "Gemini",
      "text": "🌟 Welcome to our Healthcare Assistant Chatbot! 🌟 \n Our goal is to help you find the right healthcare branch for your specific needs. \n Please share your health conditions or symptoms, and we'll guide you to the most suitable place for assistance. \n Example: 'I have a persistent cough and difficulty breathing.' \n Remember, this chatbot provides recommendations based on the information you provide, but it is not a substitute for professional medical advice. In case of emergencies, please seek immediate help.Now, please describe your health conditions, and let's get started on finding the best healthcare branch for you. 🏥💬",
    });
    super.initState();
  }



  // Text only input
  void fromText({required String query}) {
    setState(() {
      history += 'user: '+ query + '\n';
      loading = true;
      textChat.add({
        "role": "User",
        "text": query,
      });
      _textController.clear();
    });
    scrollToTheEnd();


    gemini.generateFromText(history).then((value) {
      setState(() {
        loading = false;
        history += ' '+ value.text + '\n';
        textChat.add({
          "role": "Gemini",
          "text": value.text,
        });
      });
      scrollToTheEnd();
    }).onError((error, stackTrace) {
      setState(() {
        loading = false;
        textChat.add({
          "role": "Gemini",
          "text": error.toString(),
        });
      });
      scrollToTheEnd();
    });
  }

  void scrollToTheEnd() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _controller,
                itemCount: textChat.length,
                padding: const EdgeInsets.only(bottom: 20),
                itemBuilder: (context, index) {
                  return ListTile(
                    isThreeLine: true,
                    leading: CircleAvatar(
                      backgroundColor: Color.fromRGBO(192,159,248, 0.9),
                      child: Text(textChat[index]["role"].substring(0, 1),
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          height: 1.25,
                          color: Colors.white.withOpacity(0.8),
                        ),),
                    ),
                    title: Text(textChat[index]["role"],
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.25,
                        color: Colors.white.withOpacity(0.8),
                      ),),
                    subtitle: Text(textChat[index]["text"],style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      height: 1.25,
                      color: Colors.white.withOpacity(0.8),
                    ),),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(192,159,248, 0.09),
                borderRadius: BorderRadius.circular(40.0),
                border: Border.all(color: Color.fromRGBO(192,159,248, 0.5)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: "Type a message",
                        hintStyle: SafeGoogleFont(
                          'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          height: 1.25,
                          color: Colors.white.withOpacity(0.8),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none),
                        fillColor: Colors.transparent,
                      ),
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                  IconButton(
                    icon: loading
                        ? const CircularProgressIndicator()
                        : const Icon(Icons.send,color: Color.fromRGBO(192,159,248, 0.5)),
                    onPressed: () {
                      fromText(query: _textController.text);
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

// ------------------------------ Text with Image ------------------------------

class TextWithImage extends StatefulWidget {
  const TextWithImage({
    super.key,
  });

  @override
  State<TextWithImage> createState() => _TextWithImageState();
}

class _TextWithImageState extends State<TextWithImage> {
  bool loading = false;
  List textAndImageChat = [];
  List textWithImageChat = [];
  File? imageFile;

  final ImagePicker picker = ImagePicker();

  final TextEditingController _textController = TextEditingController();
  final ScrollController _controller = ScrollController();

  // Create Gemini Instance
  final gemini = GoogleGemini(
    apiKey: GeminiBot.apiKey,
  );

  // Text only input
  void fromTextAndImage({required String query, required File image}) {
    setState(() {
      loading = true;
      textAndImageChat.add({
        "role": "User",
        "text": query,
        "image": image,
      });
      _textController.clear();
      imageFile = null;
    });
    scrollToTheEnd();

    gemini.generateFromTextAndImages(query: query, image: image).then((value) {
      setState(() {
        loading = false;
        textAndImageChat
            .add({"role": "Gemini", "text": value.text, "image": ""});
      });
      scrollToTheEnd();
    }).onError((error, stackTrace) {
      setState(() {
        loading = false;
        textAndImageChat
            .add({"role": "Gemini", "text": error.toString(), "image": ""});
      });
      scrollToTheEnd();
    });
  }

  void scrollToTheEnd() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _controller,
              itemCount: textAndImageChat.length,
              padding: const EdgeInsets.only(bottom: 20),
              itemBuilder: (context, index) {
                return ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(
                    child:
                    Text(textAndImageChat[index]["role"].substring(0, 1)),
                  ),
                  title: Text(textAndImageChat[index]["role"]),
                  subtitle: Text(textAndImageChat[index]["text"]),
                  trailing: textAndImageChat[index]["image"] == ""
                      ? null
                      : Image.file(
                    textAndImageChat[index]["image"],
                    width: 90,
                  ),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(254,196,221, 0.09),
              borderRadius: BorderRadius.circular(40.0),
              border: Border.all(color: Color.fromRGBO(254,196,221, 0.5)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: "Write a message",
                      hintStyle: SafeGoogleFont(
                        'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        height: 1.25,
                        color: Colors.white.withOpacity(0.8),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                      fillColor: Colors.transparent,
                    ),
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_a_photo,color: Color.fromRGBO(254,196,221, 0.5)),
                  onPressed: () async {
                    final XFile? image =
                    await picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      imageFile = image != null ? File(image.path) : null;
                    });
                  },
                ),
                IconButton(
                  icon: loading
                      ? const CircularProgressIndicator()
                      : const Icon(Icons.send,color: Color.fromRGBO(254,196,221, 0.5)),
                  onPressed: () {
                    if (imageFile == null) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Please select an image")));
                      return;
                    }
                    fromTextAndImage(
                        query: _textController.text, image: imageFile!);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: imageFile != null
          ? Container(
        margin: const EdgeInsets.only(bottom: 80),
        height: 150,
        child: Image.file(imageFile ?? File("")),
      )
          : null,
    );
  }
}
