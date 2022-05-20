import 'dart:math';
import '../model/contact.dart';

class ContactRepository {
  List<Contact> contacts = [
    Contact(
        id: 1,
        name: "Abdenaser",
        group: "BDCC",
        profile: "Abdenasser",
        email: "Abdenasser@gmail.com",
        lastMessage: "hey",
        lastMessageDate: "14/05/2022"),
    Contact(
        id: 2,
        name: "Oussama",
        group: "GLSID",
        profile: "Oussama",
        email: "Oussama@gmail.com",
        lastMessage: "Bjr",
        lastMessageDate: "13/05/2022"),
    Contact(
        id: 3,
        name: "Ahmed",
        group: "BDCC",
        profile: "Ahmed",
        email: "Ahmed@gmail.com",
        lastMessage: "cv",
        lastMessageDate: "15/05/2022"),
    Contact(
        id: 4,
        name: "Amin",
        group: "BDCC",
        profile: "Amin",
        email: "Amin@gmail.com",
        lastMessage: "Bjr",
        lastMessageDate: "12/05/2022"),
    Contact(
        id: 5,
        name: "Hassan",
        group: "GLSID",
        profile: "Hassan",
        email: "Hassan@gmail.com",
        lastMessage: "cv",
        lastMessageDate: "10/05/2022"),
    Contact(
        id: 6,
        name: "Ikram",
        group: "GLSID",
        profile: "Ikram",
        email: "Ikram@gmail.com",
        lastMessage: "Bjr",
        lastMessageDate: "11/05/2022"),
  ];

  Future<List<Contact>> getAllContacts() async {
    var future = await Future.delayed(const Duration(seconds: 2));
    int rand = Random().nextInt(10);
    if (rand > 8) {
      throw Exception("ERROR !");
    }
    return contacts;
  }

  Future<List<Contact>> getContactsByGroup(String group) async {
    var future = await Future.delayed(const Duration(seconds: 2));
    int rand = Random().nextInt(10);
    if (rand > 8) {
      throw Exception("ERROR !");
    }
    var groupeContacts =
        contacts.where((element) => element.group == group).toList();
    return groupeContacts;
  }
}
