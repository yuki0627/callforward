class CallsController < ApplicationController
  def forward
    render text: "<Response><Dial callerId=\"+815031774622\">+819053909417</Dial></Response>"
    @forward_call = ForwardCall.new
    @forward_call.phone_number = params[:Caller]
    @forward_call.save
  end
end
