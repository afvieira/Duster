json.array!(@guestbooks) do |guestbook|
  json.extract! guestbook, :id, :name, :email, :message
  json.url guestbook_url(guestbook, format: :json)
end
