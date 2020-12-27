class CallsController < ApplicationController
  def forward
    caller = params[:Caller]
    # render text: "<Response>
    #                 <Say voice='woman' language='ja-JP'>申し訳ございません。営業再開は８月１７日になります。よろしくお願いします</Say>
    #               </Response>"
    render text: "<Response>
                    <Dial callerId=\"+815031774622\">+818067987319</Dial>
                  </Response>"
    call = Call.new
    call.phone_number = caller
    call.save
  end
  
  def index
    @calls = Call.all
  end
end
