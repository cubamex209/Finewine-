module SessionsHelper
  def login(speaker)
    sessions[:speaker_id] =speaker.id
    @current_speaker = speaker
  end

def current_speaker
  @current_speaker ||= Speaker.find_by_id(sessions[:speaker_id])
end

  def logout
  @current_speaker = sessions[:speaker_id] = nil
  end
end
