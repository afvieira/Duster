json.array!(@guestbooks) do |guestbook|
  json.extract! guestbook, :id, :Name, :Message
  json.url guestbook_url(guestbook, format: :json)
end
