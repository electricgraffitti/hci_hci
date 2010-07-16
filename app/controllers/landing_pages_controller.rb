class LandingPagesController < ApplicationController
  
  def cra_landing
    @button_text = "Get A Free Trial"
  end
  
  def ceo_up_landing
    @button_text = "Get Thought Paper"
  end
  
  def ahip_25_thank_you
    
  end
  
  def nadp_0624
    @advertisements = Advertisement.current_list.small_list(1).order_list
    respond_to do |format|
      format.html {render :layout => "application"}
    end
  end
  
  def ahip_0624
    @advertisements = Advertisement.current_list.small_list(1).order_list
    respond_to do |format|
      format.html {render :layout => "application"}
    end
  end
  
  def claim_saver_thank_you
    @advertisements = Advertisement.current_list.small_list(1).order_list
    respond_to do |format|
      format.html {render :layout => "application"}
    end
  end
  
  def ahip_survey_follow_up
    @advertisements = Advertisement.current_list.small_list(1).order_list
    respond_to do |format|
      format.html {render :layout => "application"}
    end
  end
  
  def invite_friend
    @friend_invite = FriendInvite.new
    @advertisements = Advertisement.current_list.small_list(1).order_list
    respond_to do |format|
      format.html {render :layout => "application"}
    end
  end
  
  def invite_thank_you
     if params[:id]
       @friend_invite = FriendInvite.find(params[:id])
     end
     @advertisements = Advertisement.current_list.small_list(1).order_list
     respond_to do |format|
       format.html {render :layout => "application"}
    end
  end
  
end
