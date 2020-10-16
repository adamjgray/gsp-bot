module Setup
  extend Discordrb::EventContainer

  server_create do |event|
    #bot joined the server: create new guild
    ap event.server
    ap event.server.owner
    server = Server.where(:discord_id => event.server.id).first

    server ||= Server.create(
      discord_id: event.server.id,
      owner_id: event.server.owner.id
    )
    ap server
  rescue => e
    ap e.message
  end

  server_delete do |event|
    ap "kicked"
  end
end
