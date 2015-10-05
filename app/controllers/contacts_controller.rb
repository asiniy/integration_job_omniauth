class ContactsController < ApplicationController
  def index
    case params[:provider]
    when 'google_oauth2' then redirect_to '/contacts/gmail'
    end
  end

  def new
    case params[:provider]
    when 'gmail'
      @contacts = request.env['omnicontacts.contacts'].map{ |p| p[:email] }.compact
    end

    @contacts = 'Have no contacts' if @contacts.try(:empty?)

    render 'pages/root'
  end
end
