module SessionsHelper
  def login(speaker)
    sessions[:speaker_id] =speaker.id
    @current_speaker = speaker
  end

def current_speaker
  @current_speaker ||= Speaker.find_by_id(session[:speaker_id])
end

def logged_in?
  if current_speaker == nil
    redirect_to login_path
  end
end
  def logout
  @current_speaker = session[:speaker_id] = nil
  end
end
