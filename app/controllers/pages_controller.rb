class PagesController < ApplicationController
  def home
    @contact = Contact.new
  end

  def create_contact
    @contact = Contact.new(contact_params)
    if @contact.valid? 
      @contact.save
      flash[:success] = "Your inquiry has been submitted."
      redirect_to action: 'home'
    else 
      flash[:error] = "Please see errors below."
      render :home
    end
  end

  def fun
  end

  def gameoflife
    render 'pages/fun/gameoflife/gameoflife'
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end

