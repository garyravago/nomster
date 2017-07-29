module ApplicationHelper
  def gravatar_url(email, size)
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    default_url = "https://nomster-gary-ravago.herokuapp.com/assets/user-ee0b60482c16064c4fcdcb79d9ececfec7cb764e6c1234dd02eaba36963cea24.png"
    url = "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}&d=#{CGI::escape(default_url)}"
  end
end
