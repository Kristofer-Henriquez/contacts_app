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

  def update
    @contacts = Contact.find_by(id: params[:id])
    @contacts.first_name = params[:first_name] || @contacts.first_name 
    @contacts.last_name = params[:last_name] || @contacts.last_name
    @contacts.email = params[:email] || @contacts.email
    @contacts.phone_number = params[:phone_number] || @contacts.phone_number
    @contacts.nickname = params[:nickname] || @contacts.nickname
    @contacts.save
    render "show.json.jb"
  end

  def destroy
    @contacts = Contact.find_by(id: params[:id])
    @contacts.destroy
    render json: {message: "You have successfully deleted the contact!"}
  end
end
