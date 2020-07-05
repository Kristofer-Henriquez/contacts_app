class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "show.json.jb"
  end
end
