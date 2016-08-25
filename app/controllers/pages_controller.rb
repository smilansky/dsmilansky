class PagesController < ApplicationController
  def contact 
    @contact = Contact.new
  end

  def create_contact
    @contact = Contact.new(contact_params)
    if @contact.valid? 
      @contact.save
      flash.now[:success] = "Your inquiry has been submitted."
      redirect_to action: 'home'
    else 
      flash.now[:error] = "Please see errors below."
      render :contact
    end
  end

  def work
  end

  def gameoflife
    render 'pages/fun/gameoflife/gameoflife'
  end

  def javascript
    render 'pages/js_facts'
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end

