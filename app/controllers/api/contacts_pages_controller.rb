class Api::ContactsPagesController < ApplicationController
  def run
    @first_contact = Contact.first
    render "first_contact.json.jb"
  end
  def run2
    @all_contacts = Contact.all
    render "all_contacts.json.jb"
  end
end
