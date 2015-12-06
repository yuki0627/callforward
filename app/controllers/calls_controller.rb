class CallsController < ApplicationController
  def forward
    render text: "<Response><Dial callerId=\"+815031774622\">+819053909417</Dial></Response>"
    @call = Call.new
    @call.phone_number = params[:Caller]
    @call.save
  end
end
