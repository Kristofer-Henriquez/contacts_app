class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render "index.json.jb"
  end

  def show
    @contacts = Contact.find_by(id: params[:id])
    render "show.json.jb"
  end

end
