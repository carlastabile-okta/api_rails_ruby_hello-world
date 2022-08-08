class MessagesController < ApplicationController
  def public
    render json: dummy_response("public")
  end

  def protected
    render json: dummy_response("protected")
  end

  def admin
    render json: dummy_response("admin")
  end

  private 

  def dummy_response(action) 
    {
      metadata: {
        api: "api_rails_ruby_hello-world",
        branch: "starter"
      },
      text: "This is a #{action} message."
    }
  end
end
