import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  // Mapa przechowująca wiadomości dla każdego odbiorcy
  final Map<String, List<types.Message>> _messagesByRecipient = {
    'dean-office': [],
    'lecturer': [],
    'admin': []
  };

  final _user = const types.User(id: '82091008-a484');
  final _recipients = [
    {'name': 'Dziekanat', 'id': 'dean-office'},
    {'name': 'Prowadzący', 'id': 'lecturer'},
    {'name': 'Administracja', 'id': 'admin'}
  ];
  String? _selectedRecipient;

  void _handleSendMessage(String message) {
    if (_selectedRecipient == null) return;

    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message,
    );

    setState(() {
      // Dodaj wiadomość do listy dla wybranego odbiorcy
      _messagesByRecipient[_selectedRecipient]!.insert(0, textMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledHeading(AppLocalizations.of(context)!.messages),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.recipient,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              value: _selectedRecipient,
              items: _recipients.map((recipient) {
                return DropdownMenuItem(
                  value: recipient['id'],
                  child: Text(recipient['name']!),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedRecipient = value;
                });
              },
            ),
          ),
          Expanded(
            child: _selectedRecipient == null
                ? Center(
                    child: Text(
                      AppLocalizations.of(context)!.selectRecipient,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  )
                : Chat(
                    messages: _messagesByRecipient[_selectedRecipient]!,
                    onSendPressed: (message) =>
                        _handleSendMessage(message.text),
                    user: _user,
                    theme: DefaultChatTheme(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      primaryColor: Colors.black,
                      secondaryColor: Colors.grey[200]!,
                      inputBackgroundColor: Colors.grey[100]!,
                      inputTextColor: Colors.black,
                      inputTextCursorColor: Colors.black,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
