enum ContactType { PHONE, URL, EMAIL }

class Contact {
  String name;
  String imageUrl;
  String info;

  ContactType type;

  Contact(this.name, this.imageUrl, this.info, this.type);

  ///Named constructor to create contact with default type of ContactType.EMAIL
  Contact.email(this.name, this.imageUrl, this.info,
      {this.type = ContactType.EMAIL});

  ///Named constructor to create contact with default type of ContactType.PHONE
  Contact.phone(this.name, this.imageUrl, this.info,
      {this.type = ContactType.PHONE});

  ///Named constructor to create contact with default type of ContactType.URL
  Contact.url(this.name, this.imageUrl, this.info,
      {this.type = ContactType.URL});
}
