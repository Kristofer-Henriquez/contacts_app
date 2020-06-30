class Api::ContactsPagesController < ApplicationController
  def run
    @first_contact = Contact.first
    render "first_contact.json.jb"
  end
end
