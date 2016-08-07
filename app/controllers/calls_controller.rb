class CallsController < ApplicationController
  def forward
    caller = params[:Caller]
    # render text: "<Response>
    #                 <Say voice='woman' language='ja-JP'>申し訳ございません。夏季休暇中です。営業再開は８月１７日になります。</Say>
    #                 <Dial callerId=\"+815031774622\">+819053909417</Dial>
    #               </Response>"
    render text: "<Response>
                    <Dial callerId=\"+815031774622\">+819053909417</Dial>
                  </Response>"
    call = Call.new
    call.phone_number = caller
    call.save
  end
  
  def index
    @calls = Call.all
  end
end
