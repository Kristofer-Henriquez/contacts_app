class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render "index.json.jb"
  end

  def show
    @contacts = Contact.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @contacts = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      nickname: params[:nickname]
    )
    @contacts.save
    render "show.json.jb"
  end

end
