module SessionsHelper
  def login(speaker)
    session[:speaker_id] =speaker.id
    @current_speaker = speaker
  end

def current_speaker
  @current_speaker ||= Speaker.find_by_id(session[:speaker_id])
end

  def logout
  @current_speaker = session[:speaker_id] = nil
  end
end
