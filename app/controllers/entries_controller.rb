# coding: utf-8
class EntriesController < ApplicationController

  #-------#
  # index #
  #-------#
  def index
    Event.where( user_id: session[:user_id] ).includes( :user => :entries ).all
  end
  
  #--------#
  # attend #
  #--------#
  def attend
    @event = Event.where( id: params[:event_id] ).first
    print "[ params ] : " ; p params ;
    
    @entry = Entry.where( user_id: session[:user_id], event_id: @event.id ).first.presence || Entry.new
    
    if params[:commit] == "行く"
      @entry.update_attributes( user_id: session[:user_id], event_id: @event.id, entry_at: Time.now, status: "出席" )
    elsif params[:commit] == "行かない"
      @entry.update_attributes( user_id: session[:user_id], event_id: @event.id, entry_at: Time.now, status: "欠席" )
    end
  end

end
